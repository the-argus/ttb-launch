execute if score @s lb_counter < @s lb_length run fill ~1 ~ ~ ~1 ~ ~ barrier replace #minecraft:air
scoreboard players add @s lb_counter 1
execute if block ~1 ~ ~ barrier if score @s lb_counter < @s lb_length positioned ~1 ~ ~ run function origami-games.lightbridges:block/light_bridges/extend_loops/rotation_1
