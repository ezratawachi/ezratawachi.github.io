#!/bin/sh
# Genera CV-Ezra-Tawachi.pdf imprimiendo index.html con Chrome.
# El texto vive solo en index.html; el armado del PDF está en su bloque @media print.
set -e
cd "$(dirname "$0")"
"/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" \
  --headless --disable-gpu --no-pdf-header-footer --allow-file-access-from-files \
  --print-to-pdf="$PWD/CV-Ezra-Tawachi.pdf" "file://$PWD/index.html" 2>/dev/null
echo "Listo: CV-Ezra-Tawachi.pdf"
