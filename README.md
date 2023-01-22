# Updating Shelly Firmware from Mongoose OS to Tasmota

This guide is designed to help users of Shelly Plus and Pro ESP32 devices to update their devices from the Mongoose OS firmware to the Tasmota firmware over the air (OTA).

## Prerequisites

1. Your Shelly device must have Mongoose OS firmware version 0.12.0 or higher installed.
2. You must have the mgos32-to-tasmota32 firmware http link for your device prepared.

## Process

### Short

1.  Connect your Shelly device to wifi/LAN with internet access.
2.  Navigate to Settings > Device Settings > Firmware > Custom Firmware and paste the prepared http link, then click Upload Firmware.
3.  Wait for the device to finish updating, then connect to its new Tasmota AP.
4.  **Optional**: Use Berry Console to download Shelly Factory Calibration files (`shelly.bin` and `aux.bin`) and save them on your PC.
5.  Increase File System (FS) to max using Partition Wizard's Menu Entry > Increase FS to max.
6.  Upload `Partiton_wizard.tapp` & `Partitions_update.be` to Berry Console, import `Partitions_update.be` & restart device.
7.  Start Safeboot Conversion process in Partition Wizard (perform OTA Tasmota upgrade if not possible, then try again).
8.  Restore Partition FS to original size (320kB) using Partition Wizard if desired.
9.  Find calibration data in `shelly.bin` around 0x1000.
10.  Finally, configure device using [templates here](https://templates.blakadder.com/search.html).

### Detailed

1. Connect your Shelly device to your local wifi or LAN with an internet connection.
2. Navigate to Settings > Device Settings > Firmware > Custom Firmware and paste the previously prepared http link. 
3. Click the **Upload Firmware** button.
4. Wait for the device to finish updating.
5. Once the update is finished, connect to the device's new Tasmota wifi access point and add the device back to your network. 
6. ***Optional*** **Shelly Factory Calibration Download:** Check that the files `shelly.bin` and `aux.bin` have been generated in the File System (FS). If not, type `import Shelly_data` into the Berry Console and hit Return twice. This will save the device-specific data in these two files. ***Mandatory*** Remember to save all the files onto a PC.
7. Open the Partition Wizard -> Menu Entry. Choose **Increase FS to max** and click the corresponding button. This will increase the FS and erase anything that is currently present in it.
8. Upload `Partiton_wizard.tapp` and `Partitions_update.be` to the Tasmota FS. Inside the Berry Console, type `import Partitions_update.be` and hit Return twice. Afterwards, restart the device.
9. Open the Partition Wizard and start the Safeboot Conversion process. If it is not possible to start due to something is marked in red, then an OTA Tasmota upgrade is needed. Perform the upgrade, and the Safeboot Conversion process can then be started.
10. The size of the Partition FS is now larger than the default size. If desired, the default 320kB size can be restored using the Partition Wizard.
11. To complete the Tasmota setup, search for the needed calibration data in the `shelly.bin` file. This data should be located around 0x1000.
12. Now you can configure your device. You can find templates for your device [here](https://templates.blakadder.com/search.html). 

## Supported Devices and OTA Links

| **Device** | **Link** | **State** |
|------|------|------|
| **PlusHT** |   `http://ota.tasmota.com/tasmota32/shelly/mgos32-to-tasmota32-PlusHT.zip `   |   :warning:**untested**   |
| **PlusPlugS** |   `http://ota.tasmota.com/tasmota32/shelly/mgos32-to-tasmota32-PlusPlugS.zip `   |   :warning:**untested**   |
| **PlusPlugIT** |   `http://ota.tasmota.com/tasmota32/shelly/mgos32-to-tasmota32-PlusPlugIT.zip `   |   :warning:**untested**   |
| **PlusPlugUS** |   `http://ota.tasmota.com/tasmota32/shelly/mgos32-to-tasmota32-PlusPlugUS.zip `   |   :warning:**untested**   |
| **PlusPlugUK** |   `http://ota.tasmota.com/tasmota32/shelly/mgos32-to-tasmota32-PlusPlugUK.zip `   |   :warning:**untested**   |
| **PlusI4** |   `http://ota.tasmota.com/tasmota32/shelly/mgos32-to-tasmota32-PlusI4.zip `   |   :warning:**untested**   |
| **PlusWallDimmer** |   `http://ota.tasmota.com/tasmota32/shelly/mgos32-to-tasmota32-PlusWallDimmer.zip `   |   :warning:**untested**   |
| **Plus1PM** |   `http://ota.tasmota.com/tasmota32/shelly/mgos32-to-tasmota32-Plus1PM.zip `   |   :white_check_mark:**tested**   |
| **Plus1** |   `http://ota.tasmota.com/tasmota32/shelly/mgos32-to-tasmota32-Plus1.zip `   |   :warning:**untested**   |
| **Plus2** |   `http://ota.tasmota.com/tasmota32/shelly/mgos32-to-tasmota32-Plus2.zip `   |   :warning:**untested**   |

### If you confirmed a **untested** working please open an issue!

## What if my device is not listed?

If your Shelly device is not listed in the templates, please open an issue with a link to the Shelly Knowledge Base.

## Credits

I would like to thank [Jason2866](https://github.com/Jason2866) for providing help with the custom Tasmota files.

## License

This repository is released under the GNU General Public License v3.0. Refer to the [LICENSE](LICENSE) file for more information. 

Copyright (C) 2023 Philipp '3D' ten Brink 
