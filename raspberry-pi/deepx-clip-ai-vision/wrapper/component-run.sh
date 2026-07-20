#!/bin/bash
# Runs the CLIP demo bridge headless under Greengrass, using the prepared
# dx_clip_demo installation's virtual environment.
set -e

cd "$(dirname "$0")"/..

DEMO_ROOT="${DX_CLIP_DEMO_ROOT:?DX_CLIP_DEMO_ROOT (CLIP_DEMO_PATH configuration) is not set}"

source "${DEMO_ROOT}/venv-opencv/bin/activate"
exec python3 -u dx_iotc_bridge.py \
  --headless \
  --camera "${CAMERA_INDEX:-0}" \
  --serve "${WEB_PORT:-8080}" </dev/null
