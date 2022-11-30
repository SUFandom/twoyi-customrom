# Twoyi Custom ROM Build

A repo that builds a twoyi rom.

I would recommend to just decompile twoyi apk then insert your owm rom instead for better support.

Badges:

![alttext](https://img.shields.io/badge/status-stable-BrightGreen) 
[![github-stars](https://img.shields.io/github/stars/SUFandom/twoyi-customrom?style=flat&logo=github)](https://github.com/SUFandom/twoyi-customrom)
![alttext](https://img.shields.io/badge/ROMFILE-unstable-red)

Dependencies:

- wget

    To Download the ROMFILE

- p7zip 

    To Extract and Pack the ROMFILE

    Install it by typing `apt install p7zip`

## Hardware Recommended Specs:

To be transparent, the reason this requirement exists because p7zip will try to use maximum performance in threads (if possible.)

RAM Numbers in linux depends on what OS and how big is the ram consumption (~*ehem, people with 1.8gb ram consumption to their DE -_-*~), the numbers are arbitrary.

Also XFCE Best

> For x86/x64 / amd64
> - Intel Core i3 (ANY) with 2GB of RAM (Linux) and 4GB of RAM (Windows 10)
> - AMD A4 from Bulldozer Series with 2GB of RAM and 4gb of RAM (Windows)
>
> For ARM
> - Chromebooks
>   - MediaTek Kompanio 500 and later
>
>
> - Windows For ARM
>   - Unspecified. 4GB of RAM Recommended
> 
> Android ARM
> 
> Termux 
> - Android 8 and later with the Following:
>> Android CPU/SoC Specifications
>> - MediaTek Helio P40 and Newer Mid to High MediaTek Segments.
>> - Qualcomm Snapdragon 626 and later
>> 
>> Android CPU/SOC that i recommend to AVOID IT!
>> - MediaTek MT8580 and all 32 bit only variants
>> - Most of SpreadTrum/UniSOC Platforms as some dont have CPU Cache Embedded.


## OS Details

AOSP Android 8.1.0 with:

- Aurora Store 
- F-Droid
- Xposed (May not work)
- microG Official Core (GMS Consumes 1GB RAM than this)
- NewPipe

## Use 

To install and build:

```
git clone https://github.com/SUFandom/twoyi-customrom && cd twoyi-customrom && chmod +x *.sh && ./build.sh 
```

Just follow instructions on what the terminal says

## Problems

- Codecs are missing, So no Media Player can play audio/video. That's just the problem for twoyi devs itself, not me. 
- GL is only on software rendering, there is no pass-through support from Twoyi yet.
- You cannot install 32 bit only apps. Twoyi teams consider not adding 32 bit support.
- You have to check an app info before going Settings -> Apps because the settings will crash if you dont follow it.