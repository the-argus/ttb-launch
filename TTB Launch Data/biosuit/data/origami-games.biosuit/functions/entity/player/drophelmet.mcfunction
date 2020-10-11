summon item ~ ~ ~ {PickupDelay:15,Item:{id:"minecraft:blackstone",Count:1b}}

data modify entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:blackstone"}}] Item merge from entity @s Inventory[{Slot:103b}]

replaceitem entity @s armor.head air
