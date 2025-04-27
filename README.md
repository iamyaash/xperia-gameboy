# Sony-Boy
Turn your **`Sony Xperia XZ2 Compact`** into a pocket-sized retro gaming handheld.

This project documents how to repurpose the **Sony Xperia XZ2 Compact** into a Game Boy-style emulator device. It's designed specifically with this phone in mind, its **compact size, powerful processor, and stereo speakers** (_it doesn't have headphone jack tho_) make it ideal for retro gaming.

> ⚠️ While the general steps can be adapted to other Android phones, optimizations here are **specific to the XZ2 Compact**. Use caution and adjust manually for other devices.


# Configurations

1. Uninstall bloatware and unnecessary applications in your device using [Universal Android Debloater](https://github.com/0x192/universal-android-debloater/releases).

    > **Note**: We're focussing on turning the phone into fully-fledged retro gaming device, so we'll remove almost all the apps except those essential for keeping the device up and running. 

2. Install the Applications

**Manually**
- [RetroArch](https://f-droid.org/packages/com.retroarch/)
- [Daijisho](https://github.com/TapiocaFox/Daijishou/releases/tag/v1.4.80)

**Via Script** (_Linux - Enable Debugging Mode in Phone_)
```sh
sudo dnf install android-tools
```
```sh
chmod +x install_apps.sh
./install_apps.sh
```

3. 

## Sony Xperia XZ2 Compact – Essential Specs for Retro Gaming

| Category       | Specification |
|----------------|---------------|
| **Display**    | 5.0" IPS LCD, 1080 x 2160 pixels, ~483 ppi, HDR, Gorilla Glass 5 |
| **OS**         | Android 8.0 (Oreo), upgradable to Android 10 |
| **Chipset**    | Qualcomm Snapdragon 845 (10nm) |
| **CPU**        | Octa-core (4x2.7 GHz Kryo 385 Gold & 4x1.7 GHz Kryo 385 Silver) |
| **GPU**        | Adreno 630 |
| **RAM**        | 4GB |
| **Storage**    | 64GB UFS 2.1, microSDXC (hybrid slot, dual SIM model) |
| **Battery**    | 2870 mAh, Fast charging 18W (Quick Charge 3.0) |
| **Audio**      | Stereo speakers, No 3.5mm jack, 24-bit/192kHz audio |
| **USB**        | USB Type-C 3.1, USB OTG support |
| **Dimensions** | 135 x 65 x 12.1 mm, 168g |
| **Build**      | Gorilla Glass 5 front, plastic back, aluminum frame |
| **Connectivity** | Wi-Fi 802.11 a/b/g/n/ac, Bluetooth 5.0, NFC |

## Supported Models
- H8314
- H8324
- SO-05K (Japan)