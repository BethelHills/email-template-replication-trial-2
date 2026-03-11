#!/bin/bash
# Open the email template in your browser
cd "$(dirname "$0")"

# Try opening file directly first (works without server)
if open -a "Safari" "index.html" 2>/dev/null || \
   open -a "Google Chrome" "index.html" 2>/dev/null || \
   open -a "Firefox" "index.html" 2>/dev/null || \
   open "index.html" 2>/dev/null; then
  echo "Template opened in browser."
  echo "Logo loads from GitHub URL."
else
  # Fallback: start server and open
  python3 -m http.server 8888 &
  sleep 2
  open "http://localhost:8888/"
  echo "Template at http://localhost:8888/"
fi
