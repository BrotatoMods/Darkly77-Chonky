extends Node

const MOD_DIR = "Darkly77-Chonky/" # name of the folder that this file is in
const CHONKY_LOG = "Darkly77-Chonky" # full ID of your mod (AuthorName-ModName)

var dir = ""
var ext_dir = ""
var trans_dir = ""


func _init(modLoader = ModLoader):
	ModLoaderLog.info("Init", CHONKY_LOG)
	dir = ModLoaderMod.get_unpacked_dir() + MOD_DIR
	ext_dir = dir + "extensions/"
	trans_dir = dir + "translations/"

	# Add translations
	ModLoaderMod.add_translation(trans_dir + "mod_chonky_text.en.translation")


func _ready()->void:
	var chonky_data = load("res://items/characters/chunky/chunky_data.tres")
	chonky_data.name = "CHONKY_NAME_FIX"

	ModLoaderLog.info("Ready", CHONKY_LOG)
