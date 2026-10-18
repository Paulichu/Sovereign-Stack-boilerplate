#!/bin/bash
set -euo pipefail

# Script: create_bundle_zip.sh
# Purpose: create releases/bundle-v1.0.zip from the bundle/ directory
# Usage: ./scripts/create_bundle_zip.sh

OUT_DIR="releases"
OUT_NAME="bundle-v1.0.zip"
BUNDLE_DIR="bundle"

mkdir -p "$OUT_DIR"
if [ ! -d "$BUNDLE_DIR" ]; then
  echo "Error: $BUNDLE_DIR directory not found in repo root."
  exit 1
fi

echo "Creating $OUT_DIR/$OUT_NAME from $BUNDLE_DIR/..."
cd "$BUNDLE_DIR"
zip -r "../$OUT_DIR/$OUT_NAME" .
cd - >/dev/null

echo "Created releases/$OUT_NAME"

echo "Next: go to GitHub → Releases → Draft a new release → tag: bundle-v1.0 → upload releases/$OUT_NAME as asset." 
