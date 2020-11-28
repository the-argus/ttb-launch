#called by block/gravity_pads/processes

#effect players and entities
execute align xyz positioned ~-1 ~ ~-1 as @a[tag=!gp_acted_upon,tag=gp_effected,dx=2,dy=11,dz=2] positioned ~1 ~ ~1 unless entity @s[dx=0,dy=10,dz=0] at @s run function origami-games.gravitypads:entity/player/clear_effects
execute align xyz as @a[tag=!gp_acted_upon,dx=0,dy=10,dz=0,scores={gp_sneaking=1..}] at @s run function origami-games.gravitypads:entity/player/exited_field
execute align xyz as @a[tag=!gp_acted_upon,dx=0,dy=10,dz=0,scores={gp_sneaking=..0}] at @s run function origami-games.gravitypads:entity/player/entered_field
execute align xyz positioned ~-1 ~ ~-1 as @e[type=!minecraft:player,tag=!gp_acted_upon,tag=gp_effected,dx=2,dy=11,dz=2] at @s run function origami-games.gravitypads:entity/np_exited_field
execute align xyz as @e[type=!minecraft:player,dx=0,dy=10,dz=0] at @s run function origami-games.gravitypads:entity/np_entered_field
