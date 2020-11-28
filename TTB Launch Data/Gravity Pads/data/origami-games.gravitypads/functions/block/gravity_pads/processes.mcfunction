#called by origami-games.core/tick

#removal
execute unless block ~ ~ ~ dropper[facing=up]{CustomName:'{"translate":"block.launch.gravity_pad"}'} run function origami-games.gravitypads:block/gravity_pads/remove

#effect players and entities
execute if score @s gp_height matches 10 run function origami-games.gravitypads:block/gravity_pads/processes/processes_10
execute if score @s gp_height matches 9 run function origami-games.gravitypads:block/gravity_pads/processes/processes_9
execute if score @s gp_height matches 8 run function origami-games.gravitypads:block/gravity_pads/processes/processes_8
execute if score @s gp_height matches 7 run function origami-games.gravitypads:block/gravity_pads/processes/processes_7
execute if score @s gp_height matches 6 run function origami-games.gravitypads:block/gravity_pads/processes/processes_6
execute if score @s gp_height matches 5 run function origami-games.gravitypads:block/gravity_pads/processes/processes_5
execute if score @s gp_height matches 4 run function origami-games.gravitypads:block/gravity_pads/processes/processes_4
execute if score @s gp_height matches 3 run function origami-games.gravitypads:block/gravity_pads/processes/processes_3
execute if score @s gp_height matches 2 run function origami-games.gravitypads:block/gravity_pads/processes/processes_2
execute if score @s gp_height matches 1 run function origami-games.gravitypads:block/gravity_pads/processes/processes_1
