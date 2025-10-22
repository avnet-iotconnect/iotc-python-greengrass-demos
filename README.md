# Introduction

This repository contains various guides and demos that utilize
the [/IOTCONNECT Python Greengrass SDK](https://github.com/avnet-iotconnect/iotc-python-greengrass-sdk/tree/main) to connect devices to the
Avnet /IOTCONNECT platform and showcase telemetry reporting and cloud-to-device command functionality.
The Python Greengrass SDK may be used to enable /IOTCONNECT on a wide variety of development boards/platforms. Avnet has
completed this work for a subset of board as outlined in the following section.

# Pre-Enabled Development Boards

The following development boards are pre-enabled with /IOTCONNECT in this repository:

* [NXP FRDM i.MX 93](nxp-frdm-imx-93) - ([Product Link](https://www.avnet.com/shop/us/products/nxp/frdm-imx93-3074457345660216004/))
* [Raspberry Pi](raspberry-pi) - ([Product Link](https://www.raspberrypi.com/products/raspberry-pi-5/))
* [ST STM32MP135F-DK Discovery Kit](stm32mp135f-dk) - ([Product Link](https://www.st.com/en/evaluation-tools/stm32mp135f-dk.html))
* [ST STM32MP157F-DK2 Discovery Kit](stm32mp157f-dk2) - ([Product Link](https://www.newark.com/stmicroelectronics/stm32mp157f-dk2/discovery-kit-arm-cortex-a7-cortex/dp/14AJ2731))
* [ST STM32MP257F-DK Discovery Kit](stm32mp257f-dk) - ([Product Link](https://www.avnet.com/americas/product/stmicroelectronics/stm32mp257f-dk/EVOLVE-115914011/))
* [ST STM32MP257F-EV1 Discovery Kit](stm32mp257f-ev1) - ([Product Link](https://www.avnet.com/americas/product/stmicroelectronics/stm32mp257f-ev1/EVOLVE-115913010?srsltid=AfmBOooi8P39Xi7OPSW1CMYH3uWdvLvtFk_jceqzKMmL64x2kRm2Roxa&srsltid=AfmBOooi8P39Xi7OPSW1CMYH3uWdvLvtFk_jceqzKMmL64x2kRm2Roxa))

# Getting Started

To get started connecting your board to /IOTCONNECT using Greengrass, follow the Quickstart Guide within your board's specific
directory in this repository. This guide will help you flash any required images, get access to your device's console,
and set up basic /IOTCONNECT onboarding for your device.

# Other Components

If you wish to deploy a component other than the one(s) provided in your board's Quickstart, you can find more pre-compiled
example components in the [/IOTCONNECT Python Greengrass SDK repo](https://github.com/avnet-iotconnect/iotc-python-greengrass-sdk/tree/main) 
as well as the [/IOTCONNECT Python Greengrass Components repo](https://github.com/avnet-iotconnect/iotc-python-greengrass-components/tree/main).

# Connecting with the Python Lite SDK

If you are instead interested in using Avnet's /IOTCONNECT Python Lite SDK to manage these devices (and several others),
check out the [/IOTCONNECT Python Lite Demos repo](https://github.com/avnet-iotconnect/iotc-python-lite-sdk-demos/blob/main/README.md).

## Licensing

This library is distributed under
the [MIT License](https://github.com/avnet-iotconnect/iotc-c-lib/blob/master/LICENSE.md).
