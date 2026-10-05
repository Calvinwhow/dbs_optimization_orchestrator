#!/bin/sh
set -eu

cat > /usr/share/nginx/html/config.js <<EOF
window.DBS_PORTS = {
  optimizer: "${OPTIMIZER_PORT:-8081}",
  electrodeViewer: "${ELECTRODE_VIEWER_PORT:-8082}",
  neuroimaging: "${NEUROIMAGING_PORT:-8083}"
};
EOF
