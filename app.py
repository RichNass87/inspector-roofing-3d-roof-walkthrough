import os
import gradio as gr

VIEWER_URL = os.getenv("VIEWER_URL", "https://inspector-roofing.com/3d-roof-walkthrough/")

html = f"""
<div style="font-family:Arial,sans-serif;max-width:1100px;margin:0 auto;">
  <h1>Inspector Roofing 3D Roof Walkthrough Demo</h1>
  <p>This is a public technical demo page for interactive roof evidence walkthroughs.</p>
  <p><strong>Viewer URL:</strong> <a href="{VIEWER_URL}" target="_blank">{VIEWER_URL}</a></p>
  <iframe src="{VIEWER_URL}" style="width:100%;height:680px;border:1px solid #ccc;border-radius:16px;"></iframe>
  <p style="margin-top:16px;color:#555;">Disclaimer: This supports visual documentation review only. It does not determine insurance coverage, causation, engineering conclusions, code compliance, or claim approval.</p>
</div>
"""

with gr.Blocks(title="Inspector Roofing 3D Roof Walkthrough") as demo:
    gr.HTML(html)

if __name__ == "__main__":
    demo.launch()
