#scoreboard players set @s bs_hasHelm 0
#scoreboard players set @s bs_hasBoots 0
#scoreboard players set @s bs_hasLegs 0
#scoreboard players set @s suitEnabled 0

advancement revoke @s only origami-games.biosuit:inventory_changed

#execute if entity @s[nbt={Inventory:[{Count:1b,Slot:102b,id:"minecraft:leather_chestplate",tag:{Biosuit:1b}}]}] run scoreboard players set @s suitEnabled 1

#execute if score @s suitEnabled matches 1 if entity @s[nbt={Inventory:[{Count:1b,Slot:101b}]}] unless entity @s[nbt={Inventory:[{Count:1b,Slot:103b,id:"minecraft:leather_helmet",tag:{Biosuit:1b}}]}] run scoreboard players set @s bs_hasHelm 1
#execute if score @s suitEnabled matches 1 if entity @s[nbt={Inventory:[{Count:1b,Slot:101b}]}] unless entity @s[nbt={Inventory:[{Count:1b,Slot:100b,id:"minecraft:leather_boots",tag:{Biosuit:1b}}]}] run scoreboard players set @s bs_hasBoots 1
#execute if score @s suitEnabled matches 1 if entity @s[nbt={Inventory:[{Count:1b,Slot:101b}]}] unless entity @s[nbt={Inventory:[{Count:1b,Slot:101b,id:"minecraft:leather_leggings",tag:{Biosuit:1b}}]}] run scoreboard players set @s bs_hasLegs 1


#execute if score @s bs_hasHelm matches 1.. if score @s suitEnabled matches 1 at @s run function origami-games.biosuit:entity/player/drophelmet

#execute if score @s bs_hasBoots matches 1.. if score @s suitEnabled matches 1 at @s run function origami-games.biosuit:entity/player/dropfeet

#execute if score @s bs_hasLegs matches 1.. if score @s suitEnabled matches 1 at @s run function origami-games.biosuit:entity/player/droplegs

tag @s remove bs_missing_chestplate
tag @s remove bs_missing_leggings
tag @s remove bs_missing_helmet
tag @s remove bs_missing_boots

execute store result score @s bs_tempcheck run clear @s leather_chestplate 0
execute if score @s bs_tempcheck matches 0 run tag @s add bs_missing_chestplate

execute store result score @s bs_tempcheck run clear @s leather_leggings 0
execute if score @s bs_tempcheck matches 0 run tag @s add bs_missing_leggings

execute store result score @s bs_tempcheck run clear @s leather_helmet 0
execute if score @s bs_tempcheck matches 0 run tag @s add bs_missing_helmet

execute store result score @s bs_tempcheck run clear @s leather_boots 0
execute if score @s bs_tempcheck matches 0 run tag @s add bs_missing_boots

execute if entity @s[tag=bs_missing_helmet] unless entity @e[type=item,tag=bs_helmet,distance=..2] run function origami-games.biosuit:entity/player/return_helmet
execute if entity @s[tag=bs_missing_chestplate] unless entity @e[type=item,tag=bs_chestplate,distance=..2] run function origami-games.biosuit:entity/player/return_chestplate
execute if entity @s[tag=bs_missing_leggings] unless entity @e[type=item,tag=bs_leggings,distance=..2] run function origami-games.biosuit:entity/player/return_leggings
execute if entity @s[tag=bs_missing_boots] unless entity @e[type=item,tag=bs_boots,distance=..2] run function origami-games.biosuit:entity/player/return_boots

tag @s add bs_suffocating
execute if entity @s[nbt={Inventory:[{Count:1b,Slot:103b,id:"minecraft:leather_helmet"}]}] if entity @s[nbt={Inventory:[{Count:1b,Slot:100b,id:"minecraft:leather_boots"}]}] if entity @s[nbt={Inventory:[{Count:1b,Slot:101b,id:"minecraft:leather_leggings"}]}] if entity @s[nbt={Inventory:[{Count:1b,Slot:102b,id:"minecraft:leather_chestplate"}]}] run tag @s remove bs_suffocating
