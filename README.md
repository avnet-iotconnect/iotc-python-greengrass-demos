# About

This repository holds a collection of Components based on the 
[/IOTCONNECT Greengrass SDK for Python-Based Components](https://github.com/avnet-iotconnect/iotc-python-greengrass-sdk)
that can be deployed to devices running an AWS Greengrass Nucleus with /IOTCONNECT. 
To learn more about more basic component examples, about the SDK itself 
or  how your build your Greengrass SDK Component with /IOTCONNECT, visit the above SDK GitHub page link.

# Before Running The Demos

Please learn about how to use /IOTCONNECT to deploy a Greengrass Nucleus at the 
[iotc-python-greengrass-sdk](https://github.com/avnet-iotconnect/iotc-python-greengrass-sdk)
page and follow the steps to ensure that:
* Your /IOTCONNECT Device Template is created.
* Your Device created in /IOTCONNECT and is Running the Greengrass Nucleus.
* Your Component is built and registered in /IOTCONNECT.
* Your Firmware is created.
* The demo component from this repo is deployed to your device.

# AI Vision Demo

While we expect to expand this repository with additional advanced examples with AI, Machine Learning and, 
only one example is available in this repository currently featuring STM32 MP1/MP2 Ai Vision Demo.
The demo integrates with the code provided by ST and can detect objects by using the camera   
connected to the device. The list of trained objects is provided in
[this list](https://github.com/avnet-iotconnect/iotc-python-lite-sdk-demos/blob/main/stm32mp157f-dk2/ai-vision/object-labels.txt).

The ST AI Vision Component is based on our original [AI Vision Demo](https://github.com/avnet-iotconnect/iotc-python-lite-sdk-demos/tree/main/stm32mp157f-dk2/ai-vision)
that was originally created for out [/IOTCONNECT Python Lite SDK](https://github.com/avnet-iotconnect/iotc-python-lite-sdk). 
The demo has been tested with [STM32 MP157f-DK](https://www.st.com/en/evaluation-tools/stm32mp157f-dk2.html)
but should be able to run other MP1 and MP2 devices.

Once a USB UVC-Compliant Camera (such as [this](https://www.amazon.com/ALPCAM-Distortion-Compliant-Embedded-Industrial/dp/B0B1WTV1KB)) 
is connected to the USB A port on the device and component is deployed with IoTConnect, assuming your device
has an HDMI or an LVDS Display connected and can run Weston Graphical User Interface, the screen will show the camera
view, highlight recognizable object on the screen when they are detected and report the recognized object class and confidence 
to /IOTCONNECT.
