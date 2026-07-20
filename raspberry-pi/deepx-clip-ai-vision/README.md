# Ask the Camera — DEEPX DX-M1 CLIP Vision (Greengrass Component)

Advanced demo: cloud-reprogrammable AI vision as an **AWS IoT Greengrass
component**, managed and deployed entirely through /IOTCONNECT.

The CLIP vision-language model runs on the DEEPX DX-M1 M.2 NPU and scores the
live camera feed against plain-English prompts sent from the /IOTCONNECT
dashboard (`set-prompt "a person waving"`). As a Greengrass component the
demo gains what the standalone version lacks: supervised auto-restart,
versioned cloud deployment of the vision app itself, and per-deployment
configuration — with the AWS IoT connection owned by the nucleus (no
per-app credentials).

For the full demo description and value story, see
[DEMO.md](../../../iotc-python-lite-sdk-demos/raspberry-pi/deepx-clip-ai-vision/DEMO.md)
in the Python Lite SDK demos repository.

## 1. Prerequisites

> [!IMPORTANT]
> Complete these before deploying the component:
> 1. The [Raspberry Pi Greengrass nucleus lite QuickStart](../README.md) —
>    your Pi 5 is onboarded as a **Greengrass Device** in /IOTCONNECT.
> 2. The DEEPX stack and CLIP demo installation from the
>    [lite-SDK demo README](https://github.com/avnet-iotconnect/iotc-python-lite-sdk-demos/tree/main/raspberry-pi/deepx-clip-ai-vision)
>    sections covering the DEEPX runtime, `dx_clip_demo` setup, and the
>    `patches/` — everything up to (but not including) device certificates,
>    which Greengrass devices do not need.
>
> Hardware: Raspberry Pi 5 (8 GB, active cooler), DEEPX DX-M1 on an M.2 HAT,
> USB UVC camera.

Note the filesystem path of your `dx_clip_demo` checkout (e.g.
`/opt/deepx/dx_clip_demo` or `/home/<user>/deepx/dx_clip_demo`) — the
component finds the CLIP installation through its `CLIP_DEMO_PATH`
configuration value.

## 2. Import the DXCLIP Greengrass Template

1. Download [DXCLIP-template.json](https://github.com/avnet-iotconnect/iotc-python-lite-sdk-demos/blob/main/raspberry-pi/deepx-clip-ai-vision/DXCLIP-template.json).
2. In /IOTCONNECT: **Device → Greengrass Device → Template**, then
   **Create Template → Import** and select the file.

## 3. Build the Component

On any Linux/WSL machine with Python 3:

```bash
./build.sh
```

This produces `greengrass-build/recipes/recipe.yaml` and the artifact zip
under `greengrass-build/artifacts/`. Optionally export `IOTC_CPID` and
`IOTC_ENV` first to bake your account values into the recipe.

## 4. Register the Component in /IOTCONNECT

1. In /IOTCONNECT: **Device → Greengrass Device → Components → Create Component**.
2. Upload the generated `recipe.yaml` as the recipe and the artifact zip
   (`deepx-clip-demo.zip`) as the artifact.

## 5. Deploy

1. Create a **Deployment** for your Greengrass device and add
   `io.iotconnect.example.IotConnectDeepxClipDemo`.
2. In the deployment's component configuration, set `CLIP_DEMO_PATH` to your
   `dx_clip_demo` path (and optionally `CAMERA_INDEX` / `WEB_PORT`).
3. Deploy. The install step verifies the CLIP installation and adds the
   Greengrass SDK to its virtual environment; the run step starts the demo
   headless.

## 6. Using the Demo

Identical telemetry, commands, dashboard, and live web pages as the lite-SDK
demo — see its README for the
[command/telemetry tables and gauge ranges](https://github.com/avnet-iotconnect/iotc-python-lite-sdk-demos/tree/main/raspberry-pi/deepx-clip-ai-vision#5-using-the-demo).
The component runs headless: the live view is the web pages the device serves
(`http://<pi-ip>:8080/`, `/top`, `/prompts`, `/camera`), which embed directly
into /IOTCONNECT dashboard widgets.

Because it is a Greengrass component, the demo restarts automatically if it
ever exits, survives reboots, and can be updated fleet-wide by publishing a
new component version and re-deploying — no device access required.
