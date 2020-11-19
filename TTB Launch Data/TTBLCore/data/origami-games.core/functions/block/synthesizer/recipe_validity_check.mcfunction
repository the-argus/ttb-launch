# called by block/synthesizer/clock16t

# store items from the synthesizer
data modify storage origami-games.core:temp block.synthesizer.input set from block ~ ~ ~ Items
data remove storage origami-games.core:temp block.synthesizer.input[{tag:{lcore:{gui_item:1b}}}]

# get number of items from the array elements
execute store result score $stackCount1 lcore_slot_size run data get storage origami-games.core:temp block.synthesizer.input[{Slot:1b}].Count
execute store result score $stackCount2 lcore_slot_size run data get storage origami-games.core:temp block.synthesizer.input[{Slot:2b}].Count
execute store result score $stackCount3 lcore_slot_size run data get storage origami-games.core:temp block.synthesizer.input[{Slot:3b}].Count
execute store result score $stackCount4 lcore_slot_size run data get storage origami-games.core:temp block.synthesizer.input[{Slot:10b}].Count
execute store result score $stackCount5 lcore_slot_size run data get storage origami-games.core:temp block.synthesizer.input[{Slot:11b}].Count
execute store result score $stackCount6 lcore_slot_size run data get storage origami-games.core:temp block.synthesizer.input[{Slot:12b}].Count
execute store result score $stackCount7 lcore_slot_size run data get storage origami-games.core:temp block.synthesizer.input[{Slot:19b}].Count
execute store result score $stackCount8 lcore_slot_size run data get storage origami-games.core:temp block.synthesizer.input[{Slot:20b}].Count
execute store result score $stackCount9 lcore_slot_size run data get storage origami-games.core:temp block.synthesizer.input[{Slot:21b}].Count

#store the smallest stack size
scoreboard players set $craftAmount lcore_slot_count 0
execute if score $stackCount1 lcore_slot_size matches 1.. store result score $craftAmount lcore_slot_count run data get storage origami-games.core:temp block.synthesizer.input[0].Count
execute if score $stackCount2 lcore_slot_size matches 1.. if score $craftAmount lcore_slot_count > $stackCount2 lcore_slot_size run scoreboard players operation $craftAmount lcore_slot_count = $stackCount2 lcore_slot_size
execute if score $stackCount3 lcore_slot_size matches 1.. if score $craftAmount lcore_slot_count > $stackCount3 lcore_slot_size run scoreboard players operation $craftAmount lcore_slot_count = $stackCount3 lcore_slot_size
execute if score $stackCount4 lcore_slot_size matches 1.. if score $craftAmount lcore_slot_count > $stackCount4 lcore_slot_size run scoreboard players operation $craftAmount lcore_slot_count = $stackCount4 lcore_slot_size
execute if score $stackCount5 lcore_slot_size matches 1.. if score $craftAmount lcore_slot_count > $stackCount5 lcore_slot_size run scoreboard players operation $craftAmount lcore_slot_count = $stackCount5 lcore_slot_size
execute if score $stackCount6 lcore_slot_size matches 1.. if score $craftAmount lcore_slot_count > $stackCount6 lcore_slot_size run scoreboard players operation $craftAmount lcore_slot_count = $stackCount6 lcore_slot_size
execute if score $stackCount7 lcore_slot_size matches 1.. if score $craftAmount lcore_slot_count > $stackCount7 lcore_slot_size run scoreboard players operation $craftAmount lcore_slot_count = $stackCount7 lcore_slot_size
execute if score $stackCount8 lcore_slot_size matches 1.. if score $craftAmount lcore_slot_count > $stackCount8 lcore_slot_size run scoreboard players operation $craftAmount lcore_slot_count = $stackCount8 lcore_slot_size
execute if score $stackCount9 lcore_slot_size matches 1.. if score $craftAmount lcore_slot_count > $stackCount9 lcore_slot_size run scoreboard players operation $craftAmount lcore_slot_count = $stackCount9 lcore_slot_size

scoreboard players operation @s lcore_slot_size = $craftAmount lcore_slot_count

# tell crafters with valid contents to run recipe checks
execute if score @s lcore_slot_size matches 1.. run function origami-games.core:block/synthesizer/recipe_check

# if one of the recipes succeeded, then store the craft amount in the result
execute if entity @s[tag=lcore_recipe_succeeded] store result block ~ ~ ~ Items[{Slot:16b}].Count byte 1 run scoreboard players get $craftAmount lcore_slot_count

#remove recipe succeed tag
tag @s remove lcore_recipe_succeeded
