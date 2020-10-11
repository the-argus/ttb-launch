#@s - synthesiser unless block ~ ~ ~ dropper[facing=up]{CustomName:'{"translate":"block.launch.synthesiser"}'}
#called by launch/block/synthesiser/processes

#reimburse items
execute align xyz if entity @e[type=item,dx=0,dy=0,dz=0,nbt={Item:{id:"minecraft:dropper",tag:{display:{Name:'{"translate":"block.launch.synthesiser"}'}}}}] run loot spawn ~ ~ ~ loot origami-games:launch/blocks/synthesiser

#kill entities
kill @s[type=!player]
execute align xyz run kill @e[type=item,dx=0,dy=0,dz=0,nbt={Item:{id:"minecraft:dropper",tag:{display:{Name:'{"translate":"block.launch.synthesiser"}'}}}}]
