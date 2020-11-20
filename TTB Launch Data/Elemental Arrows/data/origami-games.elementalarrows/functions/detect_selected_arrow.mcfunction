#called by origami-games.core:entity/player/inventory_changed
#@s = player
scoreboard players set @s ea_arrow_type 0
data modify storage origami-games.elementalarrows:temp player.Inventory set from entity @s Inventory

execute if data storage origami-games.elementalarrows:temp player.Inventory[{id:"minecraft:arrow",tag:{lcore:{ElementalArrow:1b}}}] run function origami-games.elementalarrows:store_slot
