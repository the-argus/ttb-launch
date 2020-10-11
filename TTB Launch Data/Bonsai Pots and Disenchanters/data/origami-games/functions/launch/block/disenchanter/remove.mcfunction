#@s - disenchanter unless block ~ ~ ~ dropper[facing=up]{CustomName:'{"translate":"block.launch.disenchanter"}'}
#called by launch/block/disenchanter/processes

#reimburse items
execute align xyz if entity @e[type=item,dx=0,dy=0,dz=0,nbt={Item:{id:"minecraft:dropper",tag:{display:{Name:'{"translate":"block.launch.disenchanter"}'}}}}] run loot spawn ~ ~ ~ loot origami-games:launch/blocks/disenchanter

#kill entities
kill @s[type=!player]
execute align xyz run kill @e[type=item,dx=0,dy=0,dz=0,nbt={Item:{id:"minecraft:dropper",tag:{display:{Name:'{"translate":"block.launch.disenchanter"}'}}}}]
