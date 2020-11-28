execute if block ~ ~ ~ #minecraft:air run scoreboard players add @s gp_height 1

execute if block ~ ~ ~ #minecraft:air if score @s gp_height matches ..9 positioned ~ ~1 ~ run function origami-games.gravitypads:block/gravity_pads/iterate
