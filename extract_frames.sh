#!/usr/bin/env bash
set -e

# Extract frames from a drone video for 3D reconstruction.
# Usage:
#   bash scripts/extract_frames.sh examples/input/drone_roof_orbit.mp4 examples/output/frames 3

VIDEO=${1:-examples/input/drone_roof_orbit.mp4}
OUTDIR=${2:-examples/output/frames}
FPS=${3:-3}

mkdir -p "$OUTDIR"
ffmpeg -i "$VIDEO" -vf "fps=$FPS,scale=-1:2160" -q:v 2 "$OUTDIR/frame_%05d.jpg"
echo "Frames extracted to $OUTDIR"
