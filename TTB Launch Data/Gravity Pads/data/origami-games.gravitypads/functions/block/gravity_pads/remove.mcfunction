#called by launch/block/gravity_pads/processes

#reimburse items
execute align xyz if entity @e[type=item,dx=0,dy=0,dz=0,limit=1,nbt={Item:{id:"minecraft:dropper",tag:{display:{Name:'{"translate":"block.launch.gravity_pad"}'}}}}] run loot spawn ~ ~ ~ loot origami-games.core:items/light_bridge

#kill entities
kill @s[type=!player]
execute align xyz run kill @e[type=item,dx=0,dy=0,dz=0,limit=1,nbt={Item:{id:"minecraft:dropper",tag:{display:{Name:'{"translate":"block.launch.gravity_pad"}'}}}}]
