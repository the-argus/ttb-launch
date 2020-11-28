execute as @e[type=armor_stand,tag=gp_gravity_pad] at @s run function origami-games.gravitypads:block/gravity_pads/check_distance

schedule function origami-games.gravitypads:block/gravity_pads/clock16t 16t replace
