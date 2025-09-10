extends Node
class_name UnityAdsNode

# --- Properties visible in inspector ---
@export var game_id: String = "1234567"
@export var test_mode: bool = true
@export var interstitial_id: String = "video"
@export var banner_id: String = "banner"

# Signals
signal ad_loaded(placement_id)
signal ad_failed(message)
signal ad_shown_complete(state)
signal banner_loaded(placement_id)
signal banner_failed(message)
signal initialized(success)

var unity_plugin

func _ready():
	if Engine.has_singleton("MyClass"):
		unity_plugin = Engine.get_singleton("MyClass")
	   # Connect plugin signals
		unity_plugin.connect("unityads_initialized", Callable(self, "_on_initialized"))
		unity_plugin.connect("unityads_ad_loaded", Callable(self, "_on_ad_loaded"))
		unity_plugin.connect("unityads_ad_failed", Callable(self, "_on_ad_failed"))
		unity_plugin.connect("unityads_ad_show_complete", Callable(self, "_on_ad_show_complete"))
		unity_plugin.connect("unityads_banner_loaded", Callable(self, "_on_banner_loaded"))
		unity_plugin.connect("unityads_banner_failed", Callable(self, "_on_banner_failed"))

		unity_plugin.initialize(game_id, test_mode)
	else:
		print("Unity Ads plugin not found!")

# --- Handlers ---
func _on_initialized(success):
	emit_signal("initialized", success)

func _on_ad_loaded(placement_id):
	emit_signal("ad_loaded", placement_id)

func _on_ad_failed(message):
	emit_signal("ad_failed", message)

func _on_ad_show_complete(state):
	emit_signal("ad_shown_complete", state)

func _on_banner_loaded(placement_id):
	emit_signal("banner_loaded", placement_id)
	show_banner()

func _on_banner_failed(message):
	emit_signal("banner_failed", message)

# --- API methods ---
func load_ad():
	if unity_plugin: unity_plugin.loadAd(interstitial_id)

func show_ad():
	if unity_plugin: unity_plugin.showAd(interstitial_id)

func load_banner():
	if unity_plugin: unity_plugin.loadBanner(banner_id)

func show_banner():
	if unity_plugin: unity_plugin.showBanner()

func hide_banner():
	if unity_plugin: unity_plugin.hideBanner()
