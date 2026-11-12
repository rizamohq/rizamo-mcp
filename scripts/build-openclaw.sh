#!/bin/sh
# Builds the OpenClaw plugin ClawHub publishes (clawhub package publish dist/openclaw): the manifests in openclaw/, the
# skill and the icon. ClawHub takes one plugin marker per package, so the Cursor and Gemini files stay out.
set -eu
cd "$(dirname "$0")/.."

version=$(sed -n 's/^  "version": "\(.*\)",$/\1/p' openclaw/package.json)
for f in openclaw/openclaw.plugin.json openclaw/.claude-plugin/plugin.json; do
  grep -q "\"version\": \"$version\"" "$f" || { echo "$f is not at version $version" >&2; exit 1; }
done

out=dist/openclaw
rm -rf "$out"
mkdir -p "$out/assets" "$out/skills"
cp -R openclaw/. "$out/"
cp -R skills/rizamo "$out/skills/"
cp assets/logo.png "$out/assets/icon.png"
cp LICENSE "$out/"
echo "Built $out at $version"
