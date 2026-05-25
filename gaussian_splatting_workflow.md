# Gaussian Splatting / NeRF-Style Processing Workflow

## Recommended MVP toolchain

- Capture: drone video or overlapping drone photos
- Frame extraction: ffmpeg
- Reconstruction: Nerfstudio `splatfacto` or compatible Gaussian Splatting workflow
- Hosting: Sketchfab / Hugging Face Space / private viewer
- Website explanation: Inspector Roofing 3D Roof Walkthrough page

## Steps

1. Put drone video in `examples/input/`.
2. Extract frames:

```bash
bash scripts/extract_frames.sh examples/input/drone_roof_orbit.mp4 examples/output/frames 3
```

3. Process with Nerfstudio:

```bash
bash scripts/nerfstudio_splatfacto_workflow.sh examples/output/frames examples/output/nerfstudio_data inspector_roof_3d_walkthrough_v0
```

4. Review output in Nerfstudio viewer.
5. Export a viewable asset or upload to a supported 3D viewer platform.
6. Complete the evidence manifest.
7. Publish unlisted/private version for claim file use or public demo version with private details removed.

## Quality tips

- More overlap improves reconstruction.
- Avoid motion blur.
- Avoid all-white sky dominating frames.
- Capture oblique angles; top-down only is not enough.
- Trees, shadows, glass, and reflective metal can create artifacts.
- Public demos should remove or avoid private details.

## Disclaimer

3D walkthroughs support visual review only. They do not determine coverage, causation, claim approval, engineering conclusions, or final roof measurements.
