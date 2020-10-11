#craft type = floor
#      item = launch:synthesiser
#    recipe = 1 launch:redstonic_locator, 1 iron block, 1 piston, 1 crafting table
#called by launch/clock16

#audiovisuals
function origami-games:launch/item/floor_craft_base

#kill entities
kill @e[type=item,distance=...5,nbt={Item:{Count:1b,tag:{origami-games:{launch:{item:"redstonic_locator"}}}}}]
kill @e[type=item,distance=...5,nbt={Item:{id:"minecraft:iron_block",Count:1b}}]
kill @e[type=item,distance=...5,nbt={Item:{id:"minecraft:crafting_table",Count:1b}}]
kill @e[type=item,distance=...5,nbt={Item:{id:"minecraft:piston",Count:1b}}]

#summon item
loot spawn ~ ~ ~ loot origami-games:launch/items/synthesiser
data merge entity @e[type=item,distance=0,limit=1] {Motion:[0.0d,0.2d,0.0d],PickupDelay:11s,CustomNameVisible:1,CustomName:'{"translate":"block.launch.synthesiser"}'}
