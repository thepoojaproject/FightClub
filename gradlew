#!/bin/sh
set -e
GRADLE_VERSION=8.7
DIST_URL="https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"
BASE_DIR="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"
CACHE_DIR="$BASE_DIR/.gradle-wrapper"
ZIP="$CACHE_DIR/gradle.zip"
DIST="$CACHE_DIR/gradle-${GRADLE_VERSION}"
if [ ! -x "$DIST/bin/gradle" ]; then
  mkdir -p "$CACHE_DIR"
  if [ ! -f "$ZIP" ]; then
    curl -fsSL "$DIST_URL" -o "$ZIP"
  fi
  rm -rf "$DIST"
  unzip -q "$ZIP" -d "$CACHE_DIR"
fi
exec "$DIST/bin/gradle" "$@"
