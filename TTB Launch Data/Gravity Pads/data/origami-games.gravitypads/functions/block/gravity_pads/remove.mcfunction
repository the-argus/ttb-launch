#called by launch/block/gravity_pads/processes

#reset entites and players in the field
execute align xyz positioned ~-1 ~ ~-1 as @a[tag=!gp_acted_upon,tag=gp_effected,dx=2,dy=11,dz=2] at @s run function origami-games.gravitypads:entity/player/clear_effects
execute align xyz positioned ~-1 ~ ~-1 as @e[type=!minecraft:player,dx=2,dy=11,dz=2] at @s run function origami-games.gravitypads:entity/np_exited_field

#reimburse items
execute align xyz if entity @e[type=item,dx=0,dy=0,dz=0,limit=1,nbt={Item:{id:"minecraft:dropper",tag:{display:{Name:'{"translate":"block.launch.gravity_pad"}'}}}}] run loot spawn ~ ~ ~ loot origami-games.core:items/light_bridge

#kill entities
kill @s[type=!player]
execute align xyz run kill @e[type=item,dx=0,dy=0,dz=0,limit=1,nbt={Item:{id:"minecraft:dropper",tag:{display:{Name:'{"translate":"block.launch.gravity_pad"}'}}}}]
