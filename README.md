
# Shelly convert to Tasmota

This guide explains how to convert Shelly ESP32 and ESP32-C3 driven devices to Tasmota OTA (over the air).

## WARNING :warning:

**There is no way back to Shelly firmware if you have initiated the convert process!**

The convert workflow provides a safe OTA update. However, it is a risky operation to overwrite the bootloader. If something unexpected happens, it will probably render the device inoperable until it is recovered.
To recover a failed OTA convert, flashing Tasmota over a wired serial connection needs to be done.

## Prerequisites

1. Update your Shelly device to the latest firmware.
2. You must have the `mgos32-to-tasmota32` firmware http link or the downloaded *.zip package for your device (according to the table below).

## Process

### Replace Shelly with Tasmota32 v12.5.0 firmware

1. Connect your Shelly device to your local Wi-Fi or LAN with an internet connection.
2. Navigate to Settings > Device Settings > Firmware > Custom Firmware and paste the previously prepared http link **or** the convert *.zip for your device. Copy the link or drag & drop the *.zip in the Shelly firmware update area.
3. Click the **Update** button.
4. Wait for the device to finish updating.
5. If Shelly Web frontend is back after the OTA update, repeat the steps above.
6. The Web frontend does not react anymore.
7. Connect to the now opened Tasmota Wi-Fi access point and add the device to your Wi-Fi. 

### ⚠️ NEEDED ⚠️ Convert to Tasmota Safeboot and update to latest Tasmota release

1. Configure device using Tasmota Auto configuration. Select your device and hit enter. **This replaces the locked bootloader** (without this step device gets bricked with next firmware update)
2. Wait until device is online again. Takes a few seconds
3. Open the Partition Wizard and start the Safeboot Conversion with hitting the button "Start Migration". The conversion will update to latest Tasmota version too.
4. Wait until device is online again. Takes 3 - 5 minutes
5. The size of the Partition FS is maybe different than the default size. Use Partition Wizard to adjust the FS size. This removes all obsolete files too.

## Supported Devices and OTA Links

| **Device** | **Link** | **State** |
|------|------|------|
| **PlusHT** |   `http://ota.tasmota.com/tasmota32/shelly/mgos32-to-tasmota32-PlusHT.zip`   |   :warning:**untested**   |
| **PlusPlugS** |   `http://ota.tasmota.com/tasmota32/shelly/mgos32-to-tasmota32-PlusPlugS.zip`   |   :white_check_mark:**tested**   |
| **PlugIT** |   `http://ota.tasmota.com/tasmota32/shelly/mgos32-to-tasmota32-PlugIT.zip`   |   :warning:**untested**   |
| **PlugUS** |   `http://ota.tasmota.com/tasmota32/shelly/mgos32-to-tasmota32-PlugUS.zip`   |   :warning:**untested**   |
| **PlugUK** |   `http://ota.tasmota.com/tasmota32/shelly/mgos32-to-tasmota32-PlugUK.zip`   |   :warning:**untested**   |
| **PlusI4** |   `http://ota.tasmota.com/tasmota32/shelly/mgos32-to-tasmota32-PlusI4.zip`   |   :white_check_mark:**tested**   |
| **PlusWallDimmer** |   `http://ota.tasmota.com/tasmota32/shelly/mgos32-to-tasmota32-PlusWallDimmer.zip`   |   :warning:**untested**   |
| **Plus1PM** |   `http://ota.tasmota.com/tasmota32/shelly/mgos32-to-tasmota32-Plus1PM.zip`   |   :white_check_mark:**tested**   |
| **Plus1** |   `http://ota.tasmota.com/tasmota32/shelly/mgos32-to-tasmota32-Plus1.zip`   |   :white_check_mark:**tested**   |
| **Plus2PM** |   `http://ota.tasmota.com/tasmota32/shelly/mgos32-to-tasmota32-Plus2PM.zip`   |   :white_check_mark:**tested**   |
| **Pro1** |   `http://ota.tasmota.com/tasmota32/shelly/mgos32-to-tasmota32-Pro1.zip`   |   :white_check_mark:**tested**   |
| **Pro1PM** |   `http://ota.tasmota.com/tasmota32/shelly/mgos32-to-tasmota32-Pro1PM.zip`   |   :white_check_mark:**tested**   |
| **Pro2** |   `http://ota.tasmota.com/tasmota32/shelly/mgos32-to-tasmota32-Pro2.zip`   |   :white_check_mark:**tested**   |
| **Pro2PM** |   `http://ota.tasmota.com/tasmota32/shelly/mgos32-to-tasmota32-Pro2PM.zip`   |   :white_check_mark:**tested**   |
| **Pro3** |   `http://ota.tasmota.com/tasmota32/shelly/mgos32-to-tasmota32-Pro3.zip`   |   :warning:**untested**   |
| **Pro4PM** |   `http://ota.tasmota.com/tasmota32/shelly/mgos32-to-tasmota32-Pro4PM.zip`   |   :white_check_mark:**tested**   |
| **Pro3EM** |   `http://ota.tasmota.com/tasmota32/shelly/mgos32-to-tasmota32-Pro3EM.zip`   |   :warning:**untested**   |

##### Pro4PM is build with LVGL support

### If you confirmed an **untested** device working please open an issue!

## What if my device is not listed?

If your Shelly device is not listed in the templates, please open an issue with a link to the Shelly Knowledge Base.

Or buy the device from my [Amazon Wishlist](https://www.amazon.de/hz/wishlist/ls/2ZS2NBA6PPEDD) and I will reverse engineer and confirm the device working.

## Credits

I would like to thank [Jason2866](https://github.com/Jason2866) for providing help with the custom Tasmota files.

## License

This repository is released under the GNU General Public License v3.0. Refer to the [LICENSE](LICENSE) file for more information. 

Copyright (C) 2023 Philipp '3D' ten Brink 
