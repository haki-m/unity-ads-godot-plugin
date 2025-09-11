extends Control
@onready var Unity_Ads=$UnityAdsNode

@onready var load_banner=$load_banner
@onready var load_interstitial=$load_interstitial
@onready var banner_noty=$banner_noty
@onready var interstitial_noty=$interstitial_noty
@onready var show_banner=$show_banner
@onready var hide_banner=$hide_banner
@onready var show_interstitial = $show_interstitial
@onready var noty=$noty
func _ready() -> void:
	
	pass


func _on_load_banner_pressed() -> void:
	Unity_Ads.load_banner()
	load_banner.disabled=true
	show_banner.disabled=true
	hide_banner.disabled=true
	banner_noty.text= "Loading banner..."
	pass # Replace with function body.


func _on_load_interstitial_pressed() -> void:
	Unity_Ads.load_ad()
	load_interstitial.disabled=true
	show_interstitial.disabled=true
	interstitial_noty.text= "Loading interstitial ..."
	pass # Replace with function body.


func _on_unity_ads_node_ad_failed(message: Variant) -> void:
	load_interstitial.disabled=false
	interstitial_noty.text= "Ad failed to load: %s" % message
	pass # Replace with function body.


func _on_unity_ads_node_ad_loaded(placement_id: Variant) -> void:
	show_interstitial.disabled=false
	pass # Replace with function body.


func _on_unity_ads_node_ad_shown_complete(state: Variant) -> void:
	if state==true:
		interstitial_noty.text = "ad_shown_complete"
	else:
		interstitial_noty.text = "ad shown not complete"
	pass # Replace with function body.


func _on_unity_ads_node_banner_failed(message: Variant) -> void:
	load_banner.disabled=false
	banner_noty.text = "banner failed"
	pass # Replace with function body.


func _on_unity_ads_node_banner_loaded(placement_id: Variant) -> void:
	show_banner.disabled=false
	load_banner.disabled=false
	pass # Replace with function body.


func _on_unity_ads_node_initialized(success: Variant) -> void:
	if success:
		noty.text = "Unity Ads initialized successfully"
	else:
		noty.text = "Unity Ads failed to initialize"


func _on_show_banner_pressed() -> void:
	Unity_Ads.show_banner()
	show_banner.disabled=true
	hide_banner.disabled=false
	pass # Replace with function body.


func _on_hide_banner_pressed() -> void:
	Unity_Ads.hide_banner()
	hide_banner.disabled=true
	show_banner.disabled=false
	pass # Replace with function body.


func _on_show_interstitial_pressed() -> void:
	Unity_Ads.show_ad()
	show_interstitial.disabled=true
	pass # Replace with function body.
