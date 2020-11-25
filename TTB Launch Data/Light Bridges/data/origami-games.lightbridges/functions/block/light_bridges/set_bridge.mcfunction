scoreboard players set @s lb_counter 0
execute if score @s lb_rotation matches 0 if score @s lb_length matches 1.. run function origami-games.lightbridges:block/light_bridges/extend_loops/rotation_0
execute if score @s lb_rotation matches 1 if score @s lb_length matches 1.. run function origami-games.lightbridges:block/light_bridges/extend_loops/rotation_1
execute if score @s lb_rotation matches 2 if score @s lb_length matches 1.. run function origami-games.lightbridges:block/light_bridges/extend_loops/rotation_2
execute if score @s lb_rotation matches 3 if score @s lb_length matches 1.. run function origami-games.lightbridges:block/light_bridges/extend_loops/rotation_3
execute if score @s lb_rotation matches 4 if score @s lb_length matches 1.. run function origami-games.lightbridges:block/light_bridges/extend_loops/rotation_4
execute if score @s lb_rotation matches 5 if score @s lb_length matches 1.. run function origami-games.lightbridges:block/light_bridges/extend_loops/rotation_5
