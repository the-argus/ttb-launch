execute store result score $arrowUUID0 ea_counter run data get entity @s Owner[0]
execute store result score $arrowUUID1 ea_counter run data get entity @s Owner[1]
execute store result score $arrowUUID2 ea_counter run data get entity @s Owner[2]
execute store result score $arrowUUID3 ea_counter run data get entity @s Owner[3]

execute as @a if score @s lcore_UUID0 = $arrowUUID0 ea_counter if score @s lcore_UUID1 = $arrowUUID1 ea_counter if score @s lcore_UUID2 = $arrowUUID2 ea_counter if score @s lcore_UUID3 = $arrowUUID3 ea_counter run function origami-games.elementalarrows:entity/arrow/elemental_effects/ender_swap

execute as @e[distance=..3,limit=1,sort=nearest,nbt={HurtTime:10s}] run function origami-games.elementalarrows:entity/arrow/elemental_effects/ender_swap_entity
