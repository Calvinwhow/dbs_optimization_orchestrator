#!/bin/sh
set -eu

cat > /usr/share/nginx/html/config.js <<EOF
window.DBS_PORTS = {
  optimizer: "${OPTIMIZER_PORT:-3000}",
  electrodeSettings: "${ELECTRODE_SETTINGS_PORT:-3003}",
  neuroimaging: "${NEUROIMAGING_PORT:-3002}"
};
EOF
