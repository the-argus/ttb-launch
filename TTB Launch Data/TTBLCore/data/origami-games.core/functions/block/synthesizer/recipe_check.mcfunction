# called by block/synthesizer/recipe_validity_check

# make recipe usable
data modify storage origami-games.core:temp block.synthesizer.input[{Slot:1b}].Slot set value 0b
data modify storage origami-games.core:temp block.synthesizer.input[{Slot:2b}].Slot set value 1b
data modify storage origami-games.core:temp block.synthesizer.input[{Slot:3b}].Slot set value 2b
data modify storage origami-games.core:temp block.synthesizer.input[{Slot:10b}].Slot set value 3b
data modify storage origami-games.core:temp block.synthesizer.input[{Slot:11b}].Slot set value 4b
data modify storage origami-games.core:temp block.synthesizer.input[{Slot:12b}].Slot set value 5b
data modify storage origami-games.core:temp block.synthesizer.input[{Slot:19b}].Slot set value 6b
data modify storage origami-games.core:temp block.synthesizer.input[{Slot:20b}].Slot set value 7b
data modify storage origami-games.core:temp block.synthesizer.input[{Slot:21b}].Slot set value 8b

# ======
# CUSTOM
# ======

#clock
execute if data storage origami-games.core:temp block.synthesizer{input:[{id:'minecraft:gold_ingot',Slot:1b},{id:'minecraft:gold_ingot',Slot:3b},{id:'minecraft:gold_ingot',Slot:5b},{id:'minecraft:gold_ingot',Slot:7b},{id:'minecraft:redstone',Slot:4b}]} unless data storage origami-games.core:temp block.synthesizer.input[{Slot:0b}].Count unless data storage origami-games.core:temp block.synthesizer.input[{Slot:2b}].Count unless data storage origami-games.core:temp block.synthesizer.input[{Slot:6b}].Count unless data storage origami-games.core:temp block.synthesizer.input[{Slot:8b}].Count run function origami-games.core:crafting/clock

#compass
execute if data storage origami-games.core:temp block.synthesizer{input:[{id:'minecraft:iron_ingot',Slot:1b},{id:'minecraft:iron_ingot',Slot:3b},{id:'minecraft:iron_ingot',Slot:5b},{id:'minecraft:iron_ingot',Slot:7b},{id:'minecraft:redstone',Slot:4b}]} unless data storage origami-games.core:temp block.synthesizer.input[{Slot:0b}].Count unless data storage origami-games.core:temp block.synthesizer.input[{Slot:2b}].Count unless data storage origami-games.core:temp block.synthesizer.input[{Slot:6b}].Count unless data storage origami-games.core:temp block.synthesizer.input[{Slot:8b}].Count run function origami-games.core:crafting/compass

#light bridge

#gravity pad

#custom arrows
#lightning arrow
execute if score $Elemental_Arrows lcore_enabled matches 1.. if data storage origami-games.core:temp block.synthesizer{input:[{id:'minecraft:blaze_rod',Slot:4b},{id:'minecraft:iron_nugget',Slot:1b},{id:'minecraft:feather',Slot:7b}]} unless data storage origami-games.core:temp block.synthesizer.input[{Slot:0b}].Count unless data storage origami-games.core:temp block.synthesizer.input[{Slot:2b}].Count unless data storage origami-games.core:temp block.synthesizer.input[{Slot:3b}].Count unless data storage origami-games.core:temp block.synthesizer.input[{Slot:5b}].Count unless data storage origami-games.core:temp block.synthesizer.input[{Slot:6b}].Count unless data storage origami-games.core:temp block.synthesizer.input[{Slot:8b}].Count run function origami-games.core:crafting/lightning_arrow
#ender arrow
execute if score $Elemental_Arrows lcore_enabled matches 1.. if data storage origami-games.core:temp block.synthesizer{input:[{id:'minecraft:blaze_rod',Slot:4b},{id:'minecraft:ender_pearl',Slot:1b},{id:'minecraft:feather',Slot:7b}]} unless data storage origami-games.core:temp block.synthesizer.input[{Slot:0b}].Count unless data storage origami-games.core:temp block.synthesizer.input[{Slot:2b}].Count unless data storage origami-games.core:temp block.synthesizer.input[{Slot:3b}].Count unless data storage origami-games.core:temp block.synthesizer.input[{Slot:5b}].Count unless data storage origami-games.core:temp block.synthesizer.input[{Slot:6b}].Count unless data storage origami-games.core:temp block.synthesizer.input[{Slot:8b}].Count run function origami-games.core:crafting/ender_arrow


#disenchanter
execute if score $Disenchanters lcore_enabled matches 1.. if data storage origami-games.core:temp block.synthesizer{input:[{id:'minecraft:smooth_stone',Slot:0b},{id:'minecraft:writable_book',Slot:1b},{id:'minecraft:smooth_stone',Slot:2b},{id:'minecraft:smooth_stone',Slot:3b},{id:'minecraft:enchanting_table',Slot:4b},{id:'minecraft:smooth_stone',Slot:5b},{id:'minecraft:smooth_stone',Slot:6b},{id:'minecraft:obsidian',Slot:7b},{id:'minecraft:smooth_stone',Slot:8b}]} run function origami-games.core:crafting/disenchanter

#bonsai pot
execute if score $Bonsai_Pots lcore_enabled matches 1.. if data storage origami-games.core:temp block.synthesizer{input:[{id:'minecraft:bone_block',Slot:0b},{id:'minecraft:bone_block',Slot:2b},{id:'minecraft:bone_block',Slot:3b},{id:'minecraft:flower_pot',Slot:4b},{id:'minecraft:bone_block',Slot:5b},{id:'minecraft:bone_block',Slot:7b}]} unless data storage origami-games.core:temp block.synthesizer.input[{Slot:1b}].Count unless data storage origami-games.core:temp block.synthesizer.input[{Slot:6b}].Count unless data storage origami-games.core:temp block.synthesizer.input[{Slot:8b}].Count run function origami-games.core:crafting/bonsai_pot

#decompressor

#biosuit upgrade station
