#!/bin/bash
# Verifies the DEEPX CLIP demo prerequisite installation and adds the
# Greengrass SDK to its virtual environment.
set -e
set -x

cd "$(dirname "$0")"/..

DEMO_ROOT="${DX_CLIP_DEMO_ROOT:?DX_CLIP_DEMO_ROOT (CLIP_DEMO_PATH configuration) is not set}"

# ---- prerequisite checks (see README: the DEEPX stack and dx_clip_demo must
# ---- already be installed on this device) ----
if [ ! -d "${DEMO_ROOT}/clip_demo_app_opencv" ]; then
  echo "ERROR: dx_clip_demo not found at ${DEMO_ROOT}. Set the CLIP_DEMO_PATH component configuration."
  exit 1
fi
if [ ! -x "${DEMO_ROOT}/venv-opencv/bin/python" ]; then
  echo "ERROR: ${DEMO_ROOT}/venv-opencv missing. Run dx_clip_demo setup.sh first (see README)."
  exit 1
fi
if [ ! -e /dev/dxrt0 ]; then
  echo "WARNING: /dev/dxrt0 not present. Is the DX-M1 installed and the DEEPX driver loaded?"
fi

# ---- install the Greengrass SDK (and bridge deps) into the demo venv ----
"${DEMO_ROOT}/venv-opencv/bin/python" -m pip install -r requirements.txt

echo Done.
