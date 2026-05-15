#!/usr/bin/env bash
# Houdt docs/ gelijk aan de root-Pages-bestanden (nodig als GitHub Pages "main + /docs" is).
# Uitvoeren na wijzigingen aan index.html of van-tilburg.html:
#   ./scripts/sync-pages-files.sh

set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"
cp index.html docs/index.html
cp van-tilburg.html docs/van-tilburg.html
touch .nojekyll docs/.nojekyll
echo "OK: index.html en van-tilburg.html gesynchroniseerd naar docs/ ; .nojekyll opnieuw geschreven."
