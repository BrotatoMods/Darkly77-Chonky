extends Node

const MOD_DIR = "Darkly77-Chonky/" # name of the folder that this file is in
const CHONKY_LOG = "Darkly77-Chonky" # full ID of your mod (AuthorName-ModName)

var dir = ""
var ext_dir = ""
var trans_dir = ""


func _init(modLoader = ModLoader):
	ModLoaderUtils.log_info("Init", CHONKY_LOG)
	dir = modLoader.UNPACKED_DIR + MOD_DIR
	ext_dir = dir + "extensions/"
	trans_dir = dir + "translations/"

	# Add translations
	modLoader.add_translation_from_resource(trans_dir + "mod_chonky_text.en.translation")


func _ready()->void:
	var chonky_data = load("res://items/characters/chunky/chunky_data.tres")
	chonky_data.name = "CHONKY_NAME_FIX"

	ModLoaderUtils.log_info("Ready", CHONKY_LOG)
