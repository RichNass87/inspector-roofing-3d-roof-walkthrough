# Inspector Roofing 3D Roof Walkthrough

A public workflow for turning drone roof inspection imagery into interactive 3D roof evidence walkthroughs using NeRF / Gaussian Splatting style reconstruction.

## Goal

Move beyond flat roof photos by creating a reviewable 3D visual layer for roof inspection documentation.

## Public positioning

Use this language:

> Inspector Roofing 3D Roof Walkthrough is an interactive visual documentation layer for roof inspection review. It helps viewers understand roof geometry, damage locations, slope relationships, and inspection context.

Do not say it proves insurance coverage, replaces EagleView, replaces engineering, or guarantees a claim outcome.

## Folder structure

```text
capture/                         Drone capture protocol and checklist
processing/                      Reconstruction workflow notes
scripts/                         Frame extraction and processing helpers
metadata/                        Manifest templates
viewer/                          Sketchfab / web viewer starter
web_pages/                       WordPress page for Inspector Roofing
hf_space/                        Optional Hugging Face Space placeholder
examples/                        Input/output placeholders
```

## Basic workflow

1. Capture drone video / images using `capture/drone_capture_protocol.md`.
2. Extract frames with `scripts/extract_frames.sh`.
3. Process with Nerfstudio or another 3D reconstruction tool.
4. Export a Gaussian splat / 3D viewer asset.
5. Upload to Sketchfab, Hugging Face Space, or a private viewer.
6. Complete `metadata/roof_walkthrough_manifest.json`.
7. Publish the Inspector Roofing page.

## Recommended public page

```text
https://inspector-roofing.com/3d-roof-walkthrough/
```

## Disclaimer

This workflow supports visual documentation and evidence review. It is not an insurance coverage determination, engineering report, EagleView report, survey, code report, or claim approval tool.
