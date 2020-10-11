#checks all slots have the same count
#@s - [CRAFTER]
#called by launch/block/[CRAFTER]/processes

#store number of full slots
execute store result score @s lch_slot_count run data get block ~ ~ ~ Items

#get number of items from first array element
execute store result score first_stack_count lch_slot_size run data get block ~ ~ ~ Items[0].Count

#check if each slot with an item in it has the same stack size
execute if score @s lch_slot_count matches 2.. store result score @s lch_slot_size run data get block ~ ~ ~ Items[1].Count
execute if score @s lch_slot_count matches 2.. unless score @s lch_slot_size = first_stack_count lch_slot_size run scoreboard players set first_stack_count lch_slot_size 0

execute if score @s lch_slot_count matches 3.. store result score @s lch_slot_size run data get block ~ ~ ~ Items[2].Count
execute if score @s lch_slot_count matches 3.. unless score @s lch_slot_size = first_stack_count lch_slot_size run scoreboard players set first_stack_count lch_slot_size 0

execute if score @s lch_slot_count matches 4.. store result score @s lch_slot_size run data get block ~ ~ ~ Items[3].Count
execute if score @s lch_slot_count matches 4.. unless score @s lch_slot_size = first_stack_count lch_slot_size run scoreboard players set first_stack_count lch_slot_size 0

execute if score @s lch_slot_count matches 5.. store result score @s lch_slot_size run data get block ~ ~ ~ Items[4].Count
execute if score @s lch_slot_count matches 5.. unless score @s lch_slot_size = first_stack_count lch_slot_size run scoreboard players set first_stack_count lch_slot_size 0

execute if score @s lch_slot_count matches 6.. store result score @s lch_slot_size run data get block ~ ~ ~ Items[5].Count
execute if score @s lch_slot_count matches 6.. unless score @s lch_slot_size = first_stack_count lch_slot_size run scoreboard players set first_stack_count lch_slot_size 0

execute if score @s lch_slot_count matches 7.. store result score @s lch_slot_size run data get block ~ ~ ~ Items[6].Count
execute if score @s lch_slot_count matches 7.. unless score @s lch_slot_size = first_stack_count lch_slot_size run scoreboard players set first_stack_count lch_slot_size 0

execute if score @s lch_slot_count matches 8.. store result score @s lch_slot_size run data get block ~ ~ ~ Items[7].Count
execute if score @s lch_slot_count matches 8.. unless score @s lch_slot_size = first_stack_count lch_slot_size run scoreboard players set first_stack_count lch_slot_size 0

execute if score @s lch_slot_count matches 9.. store result score @s lch_slot_size run data get block ~ ~ ~ Items[8].Count
execute if score @s lch_slot_count matches 9.. unless score @s lch_slot_size = first_stack_count lch_slot_size run scoreboard players set first_stack_count lch_slot_size 0

scoreboard players operation @s lch_slot_size = first_stack_count lch_slot_size

#tell crafters with valid contents to run recipe checks
execute if entity @s[tag=lch_synthesiser] if score @s lch_slot_size matches 1.. run function origami-games:launch/block/synthesiser/recipe_check
execute if entity @s[tag=lch_disenchanter] if score @s lch_slot_size matches 1.. if score @s lch_slot_count matches 2 if data block ~ ~ ~ Items[].tag.Enchantments[].id run function origami-games:launch/block/disenchanter/disenchant

#check if one of the recipes succeeded
execute if score @s lch_slot_size matches 1.. if block ~ ~ ~ dropper{Items:[{tag:{lch_crafting:{}}}]} run function origami-games:launch/crafting/apply_multiplier
