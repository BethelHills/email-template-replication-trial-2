#!/bin/bash
# Open the email template in your browser
cd "$(dirname "$0")"

# Start server in background if not already running
if ! lsof -i :8888 >/dev/null 2>&1; then
  python3 -m http.server 8888 &
  sleep 2
fi

# Open in default browser
open "http://localhost:8888/"

echo "Template opened at http://localhost:8888/"
echo "Press Ctrl+C in the terminal to stop the server when done."
