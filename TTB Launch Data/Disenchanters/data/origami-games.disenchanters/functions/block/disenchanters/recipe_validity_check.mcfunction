#checks all slots have the same count
#@s - disenchanter
#called by launch/block/disenchanter/processes

#store disenchanter data
data modify storage origami-games.disenchanters:block input set from block ~ ~ ~ Items

#run recipe checks if contents are valid
execute if entity @s[tag=de_disenchanter] if data storage origami-games.disenchanters:block input[].tag.Enchantments[].id unless data storage origami-games.disenchanters:block input[{Slot:1b}].Count unless data storage origami-games.disenchanters:block input[{Slot:2b}].Count unless data storage origami-games.disenchanters:block input[{Slot:3b}].Count unless data storage origami-games.disenchanters:block input[{Slot:4b}].Count unless data storage origami-games.disenchanters:block input[{Slot:5b}].Count unless data storage origami-games.disenchanters:block input[{Slot:6b}].Count unless data storage origami-games.disenchanters:block input[{Slot:7b}].Count if data storage origami-games.disenchanters:block input[{Slot:8b,id:"minecraft:book"}] run function origami-games.disenchanters:block/disenchanters/disenchant
