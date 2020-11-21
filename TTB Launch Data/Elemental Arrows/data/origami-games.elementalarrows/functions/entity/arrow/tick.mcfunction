#called by origami-games.elementalarrows:used_bow (every tick)
#@s = elemental arrows
execute if entity @s[tag=ea_lightning,tag=ea_primed,nbt={inGround:1b}] at @s run function origami-games.elementalarrows:entity/arrow/elemental_effects/lightning_land
execute if entity @s[tag=ea_lightning,tag=ea_primed] at @s run function origami-games.elementalarrows:entity/arrow/elemental_effects/lightning_flying

execute if entity @s[tag=ea_ender,tag=ea_primed,nbt={inGround:1b}] at @s run function origami-games.elementalarrows:entity/arrow/elemental_effects/ender_land
execute if entity @s[tag=ea_ender,tag=ea_primed] at @s run function origami-games.elementalarrows:entity/arrow/elemental_effects/ender_flying

execute if entity @s[tag=ea_torch,tag=ea_primed,nbt={inGround:1b}] at @s run function origami-games.elementalarrows:entity/arrow/elemental_effects/torch_land
execute if entity @s[tag=ea_torch,tag=ea_primed] at @s run function origami-games.elementalarrows:entity/arrow/elemental_effects/torch_flying
