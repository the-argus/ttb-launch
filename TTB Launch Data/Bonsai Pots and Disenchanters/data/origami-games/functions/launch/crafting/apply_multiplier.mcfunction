#applies set multiplier to crafted items
#@s - crafter after recipe
#called by launch/block/<crafter>/recipe_validity_check

execute store result score stack_multiplier lch_slot_size run data get block ~ ~ ~ Items[0].tag.lch_crafting.multiplier
scoreboard players operation @s lch_slot_size *= stack_multiplier lch_slot_size
execute store result block ~ ~ ~ Items[0].Count byte 1 run scoreboard players get @s lch_slot_size
#data remove block
data remove block ~ ~ ~ Items[0].tag.lch_crafting

#remove tag
execute store result score tag_size lch_slot_size run data get block ~ ~ ~ Items[0].tag
execute if score tag_size lch_slot_size matches 0 run data remove block ~ ~ ~ Items[0].tag
