#@s - bonsai pot if [items in hopper]
#called by launch/block/bonsai_pot/processes

#get count of dirt in slot 1
execute store result score @s bp_count run data get block ~ ~ ~ Items[{Slot:0b,id:"minecraft:dirt"}].Count

#set CMD
execute unless score @s bp_count matches 1.. run data modify entity @s ArmorItems[3].tag.CustomModelData set value 7510004
execute if score @s bp_count matches 1..15 run data modify entity @s ArmorItems[3].tag.CustomModelData set value 7510005
execute if score @s bp_count matches 16.. run data modify entity @s ArmorItems[3].tag.CustomModelData set value 7510006
