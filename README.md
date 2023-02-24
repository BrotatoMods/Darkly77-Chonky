# chonky

**Fixes chonky's name**

This mod is also a proof of concept, showing how to easily edit a character's attributes. In this case, we're loading the character data (tres) file, but you can load any other file. See [mod_main.gd](https://github.com/BrotatoMods/Darkly77-Chonky/blob/main/root/mods-unpacked/Darkly77-Chonky/mod_main.gd#L21) for the code, look in the `_ready()` func.

For example, to edit Chunky's "increase MaxHP modifications" stat, load the file "chunky_effect_2.tres", and edit either the `key` or the `value`.
