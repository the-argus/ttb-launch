execute if entity @s[tag=ea_lightning] as @e[distance=..3,limit=1,sort=nearest,nbt={HurtTime:10s}] at @s run function origami-games.elementalarrows:entity/arrow/elemental_effects/lightning_hit
execute if entity @s[tag=ea_ender] at @s if entity @e[distance=..3,limit=1,sort=nearest,nbt={HurtTime:10s}] run function origami-games.elementalarrows:entity/arrow/elemental_effects/ender_hit
execute if entity @s[tag=ea_torch] as @e[distance=..3,limit=1,sort=nearest,nbt={HurtTime:10s}] at @s run function origami-games.elementalarrows:entity/arrow/elemental_effects/torch_hit

kill @s[type=!player]
