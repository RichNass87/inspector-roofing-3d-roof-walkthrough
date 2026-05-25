#!/usr/bin/env bash
set -e

# Example Nerfstudio workflow for a drone roof walkthrough.
# Review Nerfstudio docs and adjust paths depending on your setup.
# Requires: nerfstudio installed with GPU support.

DATA_DIR=${1:-examples/output/frames}
PROCESSED_DIR=${2:-examples/output/nerfstudio_data}
RUN_NAME=${3:-inspector_roof_3d_walkthrough_v0}

# Process images into a Nerfstudio dataset.
ns-process-data images --data "$DATA_DIR" --output-dir "$PROCESSED_DIR"

# Train Gaussian Splatting / Splatfacto.
ns-train splatfacto --data "$PROCESSED_DIR" --experiment-name "$RUN_NAME"

# After training, open viewer or export based on the generated config path.
# Example:
# ns-viewer --load-config outputs/$RUN_NAME/splatfacto/*/config.yml
