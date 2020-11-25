scoreboard players add @s lb_counter 1
execute if score @s lb_counter < @s lb_length unless block ~ ~ ~ redstone_lamp align xyz positioned ~.5 ~.5 ~.5 run particle minecraft:dust .36 .92 .96 2 ~ ~ ~ 0 0 .5 0.1 10 force
execute if score @s lb_counter = @s lb_length unless block ~ ~ ~ redstone_lamp align xyz positioned ~.5 ~.5 ~.5 run particle minecraft:dust .7 .5 .7 3 ~ ~ ~ .2 .2 .2 0.1 10 force
execute if block ~ ~ ~1 barrier if score @s lb_counter < @s lb_length positioned ~ ~ ~1 run function origami-games.lightbridges:block/light_bridges/particle_loops/rotation_0
