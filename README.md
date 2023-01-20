# Updating Shelly Firmware from Mongoose OS to Tasmota

This guide is designed to help users of Shelly Plus and Pro ESP32 devices to update their devices from the Mongoose OS firmware to the Tasmota firmware over the air (OTA).

## Prerequisites

1. Your Shelly device must have Mongoose OS firmware version 0.12.0 or higher installed.
2. You must have the mgos32-to-tasmota32 firmware http link for your device prepared.

## Process

1. Connect your Shelly device to your local wifi or LAN with an internet connection.
2. Navigate to Settings > Device Settings > Firmware > Custom Firmware and paste the previously prepared http link. 
3. Click the **Upload Firmware** button.
4. Wait for the device to finish updating.
5. Once the update is finished, connect to the device's new Tasmota wifi access point and add the device back to your network. 
6. Now you can configure your device. You can find templates for your device [here](https://templates.blakadder.com/search.html). 

## What if my device is not listed?

If your Shelly device is not listed in the templates, please open an issue with a link to the Shelly Knowledge Base.

## Credits

I would like to thank [Jason2866](https://github.com/Jason2866) for providing help with the custom Tasmota files.

## License

This repository is released under the GNU General Public License v3.0. Refer to the [LICENSE](LICENSE) file for more information. 

Copyright (C) 2023 Philipp '3D' ten Brink 