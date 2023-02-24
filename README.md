# chonky

Fixes chonky's name.

This mod is also a proof of concept, showing how to easily edit a character's attributes. In this case, we're loading the character data (tres) file, but you can load any other file. See [mod_main.gd](https://github.com/BrotatoMods/Darkly77-Chonky/blob/main/root/mods-unpacked/Darkly77-Chonky/mod_main.gd#L21) for the code, look in the `_ready()` func:

```gdscript
# Load the vanilla CharacterData file
var chonky_data = load("res://items/characters/chunky/chunky_data.tres")

# Replace the name with a custom string (which is defined in our translation CSV)
chonky_data.name = "CHONKY_NAME_FIX"
```

So if you wanted to edit, for example, Chunky's "Increase MaxHP modifications", and change it to affect Armor and have double the effect:

```gdscript
# Load the vanilla effect file
var chonky_effect_2 = load("res://items/characters/chunky/chunky_effect_2.tres")

# Increase the strength of the effect
chonky_effect_2.value = 50 # vanilla: 25

# Change the displayed stat to Armor
chonky_effect_2.stat_displayed = "stat_armor"

# Remove all the modified stats, and add Armor instead
chonky_effect_2.stats_modified.clear()
chonky_effect_2.stats_modified.push_back("stat_armor")
```

And if you wanted to add a new custom effect to Chunky's existing effects:

```gdscript
# Load the vanilla CharacterData file
var chonky_data = load("res://items/characters/chunky/chunky_data.tres")

# Load the mod's custom effect resource file
var new_effect = load("res://mods-unpacked/AuthorName-ModName/content/effects/chunky_effect_new.tres")

# Add the custom effect to Chunky's effects array
chonky_data.effects.push_back(new_effect)
```
