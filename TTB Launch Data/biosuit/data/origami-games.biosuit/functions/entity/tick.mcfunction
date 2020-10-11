#called by tick
execute as @e[type=player] at @s run function origami-games.biosuit:entity/player/tick
execute as @e[type=area_effect_cloud] at @s run function origami-games.biosuit:entity/area_of_effect_cloud/tick
execute as @e[type=item] at @s run function origami-games.biosuit:entity/item/tick
