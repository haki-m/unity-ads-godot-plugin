# UnityAds_By_Hakim – Godot Android Plugin

<p align="center">
  <img width="400" height="400" alt="Unity Ads Inspector" src="https://github.com/user-attachments/assets/f59e6c8d-1c7e-489b-8821-7162de86e88f" />
</p>


**UnityAds_By_Hakim** is a Godot 4.5 plugin to integrate **Unity Ads** into Android games. It provides a **custom node** for interstitial and banner ads, along with automatic Android export support.

---

## Features

- Easy **Unity Ads integration** for Godot
- Supports **interstitial and banner ads**
- Automatic **Gradle dependency injection** for Android export
- Signals for ad events: loaded, failed, shown, etc.
- Custom node available in the editor with a plugin icon

---

## Requirements

- Godot 4.5  or later  
- Android SDK (API 24+)  
- Unity Ads account & Game ID  
- Android export templates installed  

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



## How to Use

1. Add a **UnityAdsNode** to your scene.
<img width="502" height="164" alt="image" src="https://github.com/user-attachments/assets/2db4d8e6-5987-4bd0-8938-a05bc91fa02b" />

2. Set your **Game ID** and **Test Mode** in the inspector.
 <img width="393" height="359" alt="image" src="https://github.com/user-attachments/assets/14fc570c-bc4f-475d-a432-ab6a8ff32815" />
 
3. Call the node’s methods to load or show ads (interstitial or banner) using the built-in inspector buttons.  

## Available Methods

After adding a **UnityAdsNode** to your scene and setting your **Game ID** and **Test Mode**, you can call these methods to control ads:

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


## Signals

You can connect signals directly in the Godot editor to receive notifications:
<img width="390" height="382" alt="image" src="https://github.com/user-attachments/assets/4d20b3b0-ac5a-4b3e-a011-5826d03352a8" />

- `initialized(success)` – Fired when Unity Ads is ready  
- `ad_loaded(placement_id)` – Fired when an ad is loaded  
- `ad_failed(message)` – Fired when an ad fails  
- `banner_loaded(placement_id)` – Fired when a banner is loaded  
- `banner_failed(message)` – Fired when a banner fails  

---

## Android Export

- Automatically includes the required **AAR** file.  
- Adds Unity Ads dependency to Gradle.  
- No manual changes required.  



---

## License

**MIT License** – free to use, modify, and distribute. See `LICENSE`.

---

## Author

**Abdelhakim / Hakim** – [GitHub Profile](https://github.com/yourusername)
