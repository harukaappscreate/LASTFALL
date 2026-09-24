#!/bin/sh
set -e
cd "$(dirname "$0")"

echo "Building game.js for root..."
npx esbuild src/main.js --bundle --format=iife --target=es2020 --minify --outfile=game.js --log-level=warning

echo "Building dist package..."
mkdir -p dist
cp game.js dist/game.js
cp index.html dist/index.html

echo "Build complete! (game.js and dist/ ready)"
