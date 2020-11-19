#@s - bonsai pot
#called by origami-games.core/tick

#check item
execute if block ~ ~ ~ hopper{Items:[{}]} run function origami-games.bonsaipots:block/bonsaipots/check_dirt_count
execute unless data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:dirt"}] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 7510004

#produce wood
execute if score @s bp_count matches 1.. run scoreboard players add @s bp_clock 1
execute if score @s bp_clock matches 60.. run function origami-games.bonsaipots:block/bonsaipots/clock_end

#removal
execute unless block ~ ~ ~ hopper{CustomName:'{"translate":"block.launch.bonsai_pot"}'} run function origami-games.bonsaipots:block/bonsaipots/remove
