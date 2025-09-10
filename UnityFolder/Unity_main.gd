@tool
extends EditorPlugin

var exportplugin: AndroidExportPlugin
var unity_ads_icon
func _enter_tree() -> void:
	exportplugin = AndroidExportPlugin.new()
	add_export_plugin(exportplugin)
	
	 # Load an icon for the node (you can use your own PNG)
	unity_ads_icon = load("res://addons/UnityFolder/xicon.png")
    
    # Register custom node
	add_custom_type(
		"UnityAdsNode",          # Node type name
		"Node",                  # Base class
		preload("res://addons/UnityFolder/UnityAds.gd"),  # Script
		unity_ads_icon  )         # Icon

func _exit_tree() -> void:
	remove_custom_type("UnityAdsNode")
	if exportplugin:
		remove_export_plugin(exportplugin)
		exportplugin = null
	

# --- Export plugin class ---
class AndroidExportPlugin extends EditorExportPlugin:
	var pluginName = "UnityAds_By_Hakim"

	func _supports_platform(platform):
		return platform is EditorExportPlatformAndroid
		
	func _export_begin(features: PackedStringArray, is_debug: bool, path: String, flags: int) -> void:
		var gradle_path = "res://android/build/build.gradle"
		var unity_dep = 'implementation("com.unity3d.ads:unity-ads:4.16.1")'

		if not FileAccess.file_exists(gradle_path):
			print("[Unity Ads Plugin] build.gradle not found!")
			return

		var file = FileAccess.open(gradle_path, FileAccess.READ)
		var content = file.get_as_text()
		file.close()

		if unity_dep in content:
			print("[Unity Ads Plugin] Dependency already present.")
			return

		var new_content = ""
		var inserted = false
		for line in content.split("\n"):
			new_content += line + "\n"
			if "dependencies {" in line and not inserted:
				new_content += "    " + unity_dep + "\n"
				inserted = true

		if inserted:
			var file_write = FileAccess.open(gradle_path, FileAccess.WRITE)
			file_write.store_string(new_content)
			file_write.close()
			print("[Unity Ads Plugin] Dependency added to build.gradle.")

	func _get_android_libraries(platform, debug):
		if debug:
			return PackedStringArray(["UnityFolder/app-debug.aar"])
		else:
			return PackedStringArray(["UnityFolder/app-debug.aar"])
			
	func _get_android_dependencies(platform, debug):
		return PackedStringArray([])
		
	func _get_name():
		return pluginName
