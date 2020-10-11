#@s - bonsai pot unless block ~ ~ ~ hopper[facing=down]{CustomName:'{"translate":"block.launch.bonsai_pot"}'}
#called by launch/block/bonsai_pot/processes

#reimburse items
execute align xyz if entity @e[type=item,dx=0,dy=0,dz=0,nbt={Item:{id:"minecraft:hopper",tag:{display:{Name:'{"translate":"block.launch.bonsai_pot"}'}}}}] run loot spawn ~ ~ ~ loot origami-games:launch/blocks/bonsai_pot

#kill entities
kill @s[type=!player]
execute align xyz run kill @e[type=item,dx=0,dy=0,dz=0,nbt={Item:{id:"minecraft:hopper",tag:{display:{Name:'{"translate":"block.launch.bonsai_pot"}'}}}}]
