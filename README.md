# Sony-Boy
Turn your **`Sony Xperia XZ2 Compact`** into a pocket-sized retro gaming handheld.

This project documents how to repurpose the **Sony Xperia XZ2 Compact** into a Game Boy-style emulator device. It's designed specifically with this phone in mind, its **compact size, powerful processor, and stereo speakers** (_it doesn't have headphone jack tho_) make it ideal for retro gaming.

> ⚠️ While the general steps can be adapted to other Android phones, optimizations here are **specific to the XZ2 Compact**. Use caution and adjust manually for other devices.


# Configurations

1. Uninstall bloatware and unnecessary applications in your device using [Universal Android Debloater](https://github.com/0x192/universal-android-debloater/releases).

    > **Note**: We're focussing on turning the phone into fully-fledged retro gaming device, so we'll remove almost all the apps except those essential for keeping the device up and running. 

2. Install the Applications

    **Manually**
    - [RetroArch](https://f-droid.org/packages/com.retroarch/) - for emulating retro games.
    - [PPSSPP](https://www.ppsspp.org/download/) - for emulating PlayStation Portable games.

    **Via Script** (_Linux - Enable Debugging Mode in Phone_)
    ```sh
    sudo dnf install android-tools
    ```
    ```sh
    chmod +x install_apps.sh
    ./install_apps.sh
    ```

3. Configure RetroArch & PPSSPP

    **RetroArch**:
    - `Load Core` -> `Download a Core` -> (Download Cores for GB/C & GBA)
    - Nintendo - Game Boy / Color (Gearboy)
    - Nintendo - Game Boy Advance (VBA Next)
    - `User Interface` -> `Quit on Close Content`

    **PPSSPP**:
    - System -> Backend -> `Vulkan`
        - Mode -> `Skip buffer effects (non-buffered, faster)` (Optional, if SD >= 800)
        - Ansiotropic Filtering - `16x`
        - Texture Filtering - `Auto`
        - Screen Scaling Filter - `Linear`
        - Show FPS Counter - `Both`

4. Install [**`daijisho`**](https://github.com/TapiocaFox/Daijishou) (_Dashboard - Standalone Launcher_)
    - Settings -> Library -> Download Platforms
        - GameBoy / Color / Advance
    - Home -> Select Platform -> Edit -> 
        - Player Settings -> `52 - gbc - RetroArch - gearboy`
        - Player Settings -> `30 - gba - RetroArch - vba_next`
        > Note: Make sure to match the `*n - gbc/gbc RetroArch - *alias` (This applies to all the other emulation)
5. Performace tweak using `adb` (Optional):
    ```sh
    chmod +x post-tweak.sh
    ./post-tweak.sh
    ```
# Summary
1. Uninstalled bloatware and other unnecessary applications by using [**UAD**.](https://github.com/0x192/universal-android-debloater/releases) This will remove most of the background running applications and we can squeeze more performance out of the device.
2. Emulating applications such as **RetroArch**, **PPSSPP**, and others will enable games emulation.
3. **`daijisho`** acts front-end dashboard and standalone launcher to navigate between games platforms easily.

---
---

## Sony Xperia XZ2 Compact Specifications Overview

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