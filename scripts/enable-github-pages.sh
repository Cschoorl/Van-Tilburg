#!/usr/bin/env bash
# Zet GitHub Pages op: branch main, map / (root) — statische site (index.html).
# Vereist: GitHub CLI + login met rechten op de repo.
#   brew install gh
#   gh auth login
# Daarna in deze map:
#   ./scripts/enable-github-pages.sh

set -euo pipefail

OWNER_REPO="Cschoorl/Van-Tilburg"
BODY='{"build_type":"legacy","source":{"branch":"main","path":"/"}}'

if ! command -v gh >/dev/null 2>&1; then
  echo "GitHub CLI ontbreekt. Installeer en log in:"
  echo "  brew install gh && gh auth login"
  exit 1
fi

echo "Poging Pages in te schakelen voor ${OWNER_REPO} (main, / root)…"

# Nieuwe site → POST; bestaande → PUT (409 bij dubbele POST).
set +e
resp_post=$(gh api --method POST "repos/${OWNER_REPO}/pages" --input - <<<"$BODY" 2>&1)
code_post=$?
set -e

if [[ $code_post -eq 0 ]]; then
  echo "$resp_post"
  echo "Klaar (POST). Controleer: https://github.com/${OWNER_REPO}/settings/pages"
  echo "Site: https://cschoorl.github.io/Van-Tilburg/"
  exit 0
fi

if echo "$resp_post" | grep -qi 'already exists\|409'; then
  gh api --method PUT "repos/${OWNER_REPO}/pages" --input - <<<"$BODY"
  echo "Klaar (PUT). Controleer: https://github.com/${OWNER_REPO}/settings/pages"
  echo "Site: https://cschoorl.github.io/Van-Tilburg/"
  exit 0
fi

echo "POST mislukt:" >&2
echo "$resp_post" >&2
exit 1
