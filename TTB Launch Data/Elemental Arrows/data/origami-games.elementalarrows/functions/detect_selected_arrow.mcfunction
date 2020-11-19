#called by origami-games.core:entity/player/inventory_changed
#@s = player
scoreboard players set @s ea_arrow_type 0
scoreboard players set @s ea_arrow_slot 50
data modify storage origami-games.elementalarrows:temp player.Inventory set from entity @s Inventory

execute if data storage origami-games.elementalarrows:temp player.Inventory[{Slot:0b,origami-games:{ElementalArrow:1b}}] run scoreboard players set @s ea_arrow_slot 0
