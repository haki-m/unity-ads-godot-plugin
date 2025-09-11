# UnityAds_By_Hakim – Godot Android Plugin

<p align="center">
  <img width="400" height="400" alt="Unity Ads Inspector" src="https://github.com/user-attachments/assets/f59e6c8d-1c7e-489b-8821-7162de86e88f" />
</p>

**UnityAds_By_Hakim** is a Godot 4.5+ plugin to integrate **Unity Ads** into Android games.  
It provides a **custom node** for interstitial and banner ads, with **automatic Android export support**.  
⚡ **No manual Gradle editing required** – the plugin handles everything for you.  

---

## Table of Contents
- [Features](#features)
- [Requirements](#requirements)
- [Installation](#installation)
- [Usage](#usage)
  - [Available Methods](#available-methods)
  - [Signals](#signals)
- [Android Export](#android-export)
- [License](#license)
- [Author](#author)

---

## Features

- Easy **Unity Ads integration** for Godot  
- Supports **interstitial and banner ads**  
- Automatic **Gradle dependency injection** for Android export  
- Includes **Unity Ads SDK v4.16.1** out of the box  
- Signals for ad events: loaded, failed, shown, etc.  
- Custom node available in the editor with a plugin icon  

---

## Requirements

- Godot **4.5** or later  
- Android SDK (API 24+)  
- Unity Ads **account** & **Game ID**  
- Android export templates installed  
- ⚠️ **Internet & Network Access must be enabled** in the Android export templates to allow ads to load  

---

## Installation

1. Clone or download this repository.  
2. Copy the **`UnityFolder/`** folder into your project’s `res://addons/` folder:  
<img width="354" height="235" alt="image" src="https://github.com/user-attachments/assets/fcbf408e-e2ad-4a78-8e24-9157b0b06270" />

3. Enable the plugin in Godot:  

- **Project → Project Settings → Plugins**  
- Enable **UnityAds_By_Hakim**  
<img width="1206" height="172" alt="image" src="https://github.com/user-attachments/assets/44266481-7e6f-4366-ae77-e6df18f13e60" />

---

## Usage

### How to Use

1. Add a **UnityAdsNode** to your scene.  
<img width="502" height="164" alt="image" src="https://github.com/user-attachments/assets/2db4d8e6-5987-4bd0-8938-a05bc91fa02b" />

2. Set your **Game ID** and **Test Mode** in the inspector.  
<img width="393" height="359" alt="image" src="https://github.com/user-attachments/assets/14fc570c-bc4f-475d-a432-ab6a8ff32815" />

3. Call the node’s methods to load or show ads (interstitial or banner).  

---

## Available Methods

| Method | Description |
|--------|-------------|
| `load_ad()` | Loads an interstitial ad using the configured `interstitial_id`. |
| `show_ad()` | Shows the loaded interstitial ad. |
| `load_banner()` | Loads a banner ad using the configured `banner_id`. |
| `show_banner()` | Shows the loaded banner ad. |
| `hide_banner()` | Hides the currently shown banner ad. |

### Example Usage

Connect a UI button to show an interstitial ad:

<img width="433" height="235" alt="image" src="https://github.com/user-attachments/assets/19727f60-8e75-4f28-aad4-3a4548e741f2" />    <img width="363" height="197" alt="image" src="https://github.com/user-attachments/assets/d4abd41c-ea18-4f11-82e7-c4f9002bffe0" />

---

## Signals

<img width="390" height="382" alt="image" src="https://github.com/user-attachments/assets/4d20b3b0-ac5a-4b3e-a011-5826d03352a8" />

- `initialized(success)` – Fired when Unity Ads is ready  
- `ad_loaded(placement_id)` – Fired when an ad is loaded  
- `ad_failed(message)` – Fired when an ad fails  
- `banner_loaded(placement_id)` – Fired when a banner is loaded  
- `banner_failed(message)` – Fired when a banner fails  

---

## Android Export

- Automatically includes the required **AAR** file  
- Adds **Unity Ads SDK v4.16.1** dependency to Gradle  
- ⚡ No manual changes needed — just enable the plugin and export  
- ⚠️ **Ensure “Internet” and “Access Network State” permissions** are enabled in the export template so ads can load  

---


## Demo Project

You can try the plugin instantly with the **demo project**:

- **Project Name:** `demo-unity-ads`  
- **Godot Version:** 4.5.beta4  
- **Contents:** Pre-configured scene with a UnityAdsNode for interstitial and banner ads  
- **How to Use:**  
  1. Open the `demo-unity-ads` project in Godot 4.5.beta4  
  2. Enable the **UnityAds_By_Hakim** plugin  
  3. Run the scene to see test ads (interstitial and banner) in action  
 ## 🎥 Demo Video

[![Unity Ads Godot Demo](https://img.youtube.com/vi/l5BOYemdmLY/0.jpg)](https://youtu.be/l5BOYemdmLY)

👉 Watch the full demo here: https://youtu.be/l5BOYemdmLY

> ⚠️ Remember: Internet & network access must be enabled in the Android export template for ads to load.
## License

**MIT License** – free to use, modify, and distribute. See `LICENSE`.

---

## Author

**Abdelhakim / Hakim** – [GitHub Profile](https://github.com/haki-m)
