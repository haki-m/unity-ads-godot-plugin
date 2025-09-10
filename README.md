# UnityAds_By_Hakim – Godot Android Plugin

![Unity Ads Plugin](docs/images/plugin_icon.png)

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


3. Enable the plugin in Godot:

- **Project → Project Settings → Plugins**  
- Enable **UnityAds_By_Hakim**



---

## Usage



## How to Use

1. Add a **UnityAdsNode** to your scene.  
2. Set your **Game ID** and **Test Mode** in the inspector.  
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

```gdscript
func _on_Button_pressed():
    $UnityAdsNode.show_ad()
```



## Signals

You can connect signals directly in the Godot editor to receive notifications:

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
