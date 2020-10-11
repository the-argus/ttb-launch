execute if score @s bs_armorAmount matches 1 run summon item ~ ~ ~ {PickupDelay:15,Item:{id:"minecraft:blackstone",Count:1b}}

execute if score @s bs_armorAmount matches 2 run summon item ~ ~ ~ {PickupDelay:15,Item:{id:"minecraft:blackstone",Count:1b}}
execute if score @s bs_armorAmount matches 2 run summon item ~ ~1 ~ {PickupDelay:15,Item:{id:"minecraft:blackstone",Count:1b}}

execute if score @s bs_armorAmount matches 3 run summon item ~ ~ ~ {PickupDelay:15,Item:{id:"minecraft:blackstone",Count:1b}}
execute if score @s bs_armorAmount matches 3 run summon item ~ ~1 ~ {PickupDelay:15,Item:{id:"minecraft:blackstone",Count:1b}}
execute if score @s bs_armorAmount matches 3 run summon item ~ ~2 ~ {PickupDelay:15,Item:{id:"minecraft:blackstone",Count:1b}}

execute if score @s bs_hasBoots matches 1 run data modify entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:blackstone"}}] Item merge from entity @s Inventory[{Slot:100b}]
execute if score @s bs_hasLegs matches 1 run data modify entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:blackstone"}}] Item merge from entity @s Inventory[{Slot:101b}]
execute if score @s bs_hasHelm matches 1 run data modify entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:blackstone"}}] Item merge from entity @s Inventory[{Slot:103b}]

execute if score @s bs_hasBoots matches 1 run replaceitem entity @s armor.feet air
execute if score @s bs_hasLegs matches 1 run replaceitem entity @s armor.legs air
execute if score @s bs_hasHelm matches 1 run replaceitem entity @s armor.head air
