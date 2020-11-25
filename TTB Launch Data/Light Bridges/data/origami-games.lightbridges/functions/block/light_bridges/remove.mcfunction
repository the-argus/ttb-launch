#called by launch/block/lightbridges/check_destroyed

#reimburse items
execute align xyz if entity @e[type=item,dx=0,dy=0,dz=0,limit=1,nbt={Item:{id:"minecraft:redstone_lamp",Count:1b}}] run loot spawn ~ ~ ~ loot origami-games.core:items/light_bridge

#deactive the light bridge
function origami-games.lightbridges:block/light_bridges/unpowered

#kill entities
kill @s[type=!player]
execute align xyz run kill @e[type=item,dx=0,dy=0,dz=0,limit=1,nbt={Item:{id:"minecraft:redstone_lamp",Count:1b}}]
