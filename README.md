# Introduction

This repository contains various guides and demos that utilize
the [/IOTCONNECT Python Greengrass SDK](https://github.com/avnet-iotconnect/iotc-python-greengrass-sdk/tree/main) to connect devices to the
Avnet /IOTCONNECT platform and showcase telemetry reporting and cloud-to-device command functionality.
The Python Greengrass SDK may be used to enable /IOTCONNECT on a wide variety of development boards/platforms. Avnet has
completed this work for a subset of board as outlined in the following section.

# Pre-Enabled Development Boards

The following development boards are pre-enabled with /IOTCONNECT in this repository:

* [ST STM32MP135F-DK Discovery Kit](stm32mp135f-dk) - ([Product Link](https://www.st.com/en/evaluation-tools/stm32mp135f-dk.html))

# Getting Started

To get started connecting your board to /IOTCONNECT using Greengrass, follow the Quickstart Guide within your board's specific
directory in this repository. This guide will help you flash any required images, get access to your device's console,
and set up basic /IOTCONNECT onboarding for your device.

# Other Components

If you wish to deploy a component other than the one(s) provided in your board's Quickstart, you can find more pre-compiled
example components in the [/IOTCONNECT Python Greengrass SDK repo](https://github.com/avnet-iotconnect/iotc-python-greengrass-sdk/tree/main) 
as well as the [/IOTCONNECT Python Greengrass Components repo](https://github.com/avnet-iotconnect/iotc-python-greengrass-components/tree/main).

# Conncecting with the Python Lite SDK

If you are instead interested in using Avnet's /IOTCONNECT Python Lite SDK to manage these devices (and several others),
check out the [/IOTCONNECT Python Lite Demos repo](https://github.com/avnet-iotconnect/iotc-python-lite-sdk-demos/blob/main/README.md) 
which is supported by the [/IOTCONNECT Python Lite SDK](https://github.com/avnet-iotconnect/iotc-python-lite-sdk).

## Licensing

This library is distributed under
the [MIT License](https://github.com/avnet-iotconnect/iotc-c-lib/blob/master/LICENSE.md).
