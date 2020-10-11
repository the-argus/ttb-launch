#checks the server version (e.g. 1.14) - increments, such as 1.14.1, aren't and can't be detected
#called by launch/build/check

#summon test entity
summon minecraft:armor_stand ~ 0 ~ {HandItems:[{id:"minecraft:trident",Count:1b,tag:{update:13}},{id:"minecraft:lectern",Count:1b,tag:{update:14}}],ArmorItems:[{id:"minecraft:bee_spawn_egg",Count:1b,tag:{update:15}},{id:"minecraft:stick",Count:1b,tag:{update:16}},{id:"minecraft:stick",Count:1b,tag:{update:17}},{id:"minecraft:stick",Count:1b,tag:{update:18}}],Tags:["lch_ver_check"],Invisible:1b,Marker:1b,Small:1b,NoBasePlate:1b,Invulnerable:1b}
#test hand items
execute if entity @e[type=minecraft:armor_stand,tag=lch_ver_check,nbt={HandItems:[{tag:{update:13}}]}] run scoreboard players set server_version lch_general 13
execute if entity @e[type=minecraft:armor_stand,tag=lch_ver_check,nbt={HandItems:[{tag:{update:14}}]}] run scoreboard players set server_version lch_general 14
execute if entity @e[type=minecraft:armor_stand,tag=lch_ver_check,nbt={ArmorItems:[{tag:{update:15}}]}] run scoreboard players set server_version lch_general 15
#disable pack is score is too low
execute unless score server_version lch_general matches 14.. run tellraw @a {"translate":"text.launch.server_version.too_low","color":"red"}
execute unless score server_version lch_general matches 14.. run datapack disable "file/Launch (Data)"
execute unless score server_version lch_general matches 14.. run tellraw @a {"translate":"text.launch.server_version.too_low.done","color":"green"}
#kill test entities
kill @e[type=minecraft:armor_stand,tag=lch_ver_check]
