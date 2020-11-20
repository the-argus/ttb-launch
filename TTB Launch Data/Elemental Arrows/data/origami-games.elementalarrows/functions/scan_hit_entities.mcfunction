advancement revoke @s only origami-games.elementalarrows:player_hurt_entity
execute as @e[type=arrow,tag=ea_elemental] at @s if entity @e[distance=..3,limit=1,nbt={HurtTime:10s}] run function origami-games.elementalarrows:kill_hit_arrow
