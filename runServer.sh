#!/bin/sh

cat << EOF > /usr/share/caddy/loadMetadata.mjs
globalThis.API_URL = "$API_URL";
EOF

# https://github.com/caddyserver/caddy-docker/blob/d73ade4013413acbd539cde503a557b8b9be903f/Dockerfile.tmpl#L60
exec caddy run --config /etc/caddy/Caddyfile --adapter caddyfile
