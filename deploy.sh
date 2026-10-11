#!/bin/bash
cd "$(dirname "$0")" || exit
rm -rf debian
shdir-listing -d 9999 . \
  && find .git -name "index.html" -exec rm -rf {} \; \
  && find . -name index.html -exec sed -i '/<a href="\.git\/">/d' {} +
