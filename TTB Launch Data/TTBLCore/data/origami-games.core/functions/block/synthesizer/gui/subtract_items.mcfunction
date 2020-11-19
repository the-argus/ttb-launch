#called by all crafting recipes
data modify block ~ ~ ~ Items[{tag:{lcore:{gui_item:1b}}}].Count set value 1b

#subtract from the stored count values
scoreboard players operation $stackCount1 lcore_slot_size -= $craftAmount lcore_slot_count
scoreboard players operation $stackCount2 lcore_slot_size -= $craftAmount lcore_slot_count
scoreboard players operation $stackCount3 lcore_slot_size -= $craftAmount lcore_slot_count
scoreboard players operation $stackCount4 lcore_slot_size -= $craftAmount lcore_slot_count
scoreboard players operation $stackCount5 lcore_slot_size -= $craftAmount lcore_slot_count
scoreboard players operation $stackCount6 lcore_slot_size -= $craftAmount lcore_slot_count
scoreboard players operation $stackCount7 lcore_slot_size -= $craftAmount lcore_slot_count
scoreboard players operation $stackCount8 lcore_slot_size -= $craftAmount lcore_slot_count
scoreboard players operation $stackCount9 lcore_slot_size -= $craftAmount lcore_slot_count

#store amount in the items that aren't used up
execute if score $stackCount1 lcore_slot_size matches 1.. store result block ~ ~ ~ Items[{Slot:1b}].Count byte 1 run scoreboard players get $stackCount1 lcore_slot_size
execute if score $stackCount2 lcore_slot_size matches 1.. store result block ~ ~ ~ Items[{Slot:2b}].Count byte 1 run scoreboard players get $stackCount2 lcore_slot_size
execute if score $stackCount3 lcore_slot_size matches 1.. store result block ~ ~ ~ Items[{Slot:3b}].Count byte 1 run scoreboard players get $stackCount3 lcore_slot_size
execute if score $stackCount4 lcore_slot_size matches 1.. store result block ~ ~ ~ Items[{Slot:10b}].Count byte 1 run scoreboard players get $stackCount4 lcore_slot_size
execute if score $stackCount5 lcore_slot_size matches 1.. store result block ~ ~ ~ Items[{Slot:11b}].Count byte 1 run scoreboard players get $stackCount5 lcore_slot_size
execute if score $stackCount6 lcore_slot_size matches 1.. store result block ~ ~ ~ Items[{Slot:12b}].Count byte 1 run scoreboard players get $stackCount6 lcore_slot_size
execute if score $stackCount7 lcore_slot_size matches 1.. store result block ~ ~ ~ Items[{Slot:19b}].Count byte 1 run scoreboard players get $stackCount7 lcore_slot_size
execute if score $stackCount8 lcore_slot_size matches 1.. store result block ~ ~ ~ Items[{Slot:20b}].Count byte 1 run scoreboard players get $stackCount8 lcore_slot_size
execute if score $stackCount9 lcore_slot_size matches 1.. store result block ~ ~ ~ Items[{Slot:21b}].Count byte 1 run scoreboard players get $stackCount9 lcore_slot_size

#remove items that are used up
execute if score $stackCount1 lcore_slot_size matches ..0 run data remove block ~ ~ ~ Items[{Slot:1b}]
execute if score $stackCount2 lcore_slot_size matches ..0 run data remove block ~ ~ ~ Items[{Slot:2b}]
execute if score $stackCount3 lcore_slot_size matches ..0 run data remove block ~ ~ ~ Items[{Slot:3b}]
execute if score $stackCount4 lcore_slot_size matches ..0 run data remove block ~ ~ ~ Items[{Slot:10b}]
execute if score $stackCount5 lcore_slot_size matches ..0 run data remove block ~ ~ ~ Items[{Slot:11b}]
execute if score $stackCount6 lcore_slot_size matches ..0 run data remove block ~ ~ ~ Items[{Slot:12b}]
execute if score $stackCount7 lcore_slot_size matches ..0 run data remove block ~ ~ ~ Items[{Slot:19b}]
execute if score $stackCount8 lcore_slot_size matches ..0 run data remove block ~ ~ ~ Items[{Slot:20b}]
execute if score $stackCount9 lcore_slot_size matches ..0 run data remove block ~ ~ ~ Items[{Slot:21b}]
