#store the items, and drop non-gui items on top of the synthesizer
data remove block ~ ~ ~ Items[{Slot:1b,tag:{lcore:{gui_item:1b}}}]
data remove block ~ ~ ~ Items[{Slot:2b,tag:{lcore:{gui_item:1b}}}]
data remove block ~ ~ ~ Items[{Slot:3b,tag:{lcore:{gui_item:1b}}}]
data remove block ~ ~ ~ Items[{Slot:10b,tag:{lcore:{gui_item:1b}}}]
data remove block ~ ~ ~ Items[{Slot:11b,tag:{lcore:{gui_item:1b}}}]
data remove block ~ ~ ~ Items[{Slot:12b,tag:{lcore:{gui_item:1b}}}]
data remove block ~ ~ ~ Items[{Slot:19b,tag:{lcore:{gui_item:1b}}}]
data remove block ~ ~ ~ Items[{Slot:20b,tag:{lcore:{gui_item:1b}}}]
data remove block ~ ~ ~ Items[{Slot:21b,tag:{lcore:{gui_item:1b}}}]
data remove block ~ ~ ~ Items[{Slot:16b,tag:{lcore:{gui_item:1b}}}]
function origami-games.core:block/synthesizer/gui/reset/store

#this is kinda inefficient but im too lazy to make each one its own function
execute if data storage origami-games.core:gui Items[{Slot:0b}] run summon minecraft:item ~ ~1 ~ {Item:{id:"minecraft:stone",Count:1b},Tags:["lcore_gui_return_0"]}
data modify entity @e[distance=..3,type=item,limit=1,sort=nearest,tag=lcore_gui_return_0] Item set from storage origami-games.core:gui Items[{Slot:0b}]
execute if data storage origami-games.core:gui Items[{Slot:4b}] run summon minecraft:item ~ ~1 ~ {Item:{id:"minecraft:stone",Count:1b},Tags:["lcore_gui_return_4"]}
data modify entity @e[distance=..3,type=item,limit=1,sort=nearest,tag=lcore_gui_return_4] Item set from storage origami-games.core:gui Items[{Slot:4b}]
execute if data storage origami-games.core:gui Items[{Slot:5b}] run summon minecraft:item ~ ~1 ~ {Item:{id:"minecraft:stone",Count:1b},Tags:["lcore_gui_return_5"]}
data modify entity @e[distance=..3,type=item,limit=1,sort=nearest,tag=lcore_gui_return_5] Item set from storage origami-games.core:gui Items[{Slot:5b}]
execute if data storage origami-games.core:gui Items[{Slot:6b}] run summon minecraft:item ~ ~1 ~ {Item:{id:"minecraft:stone",Count:1b},Tags:["lcore_gui_return_6"]}
data modify entity @e[distance=..3,type=item,limit=1,sort=nearest,tag=lcore_gui_return_6] Item set from storage origami-games.core:gui Items[{Slot:6b}]
execute if data storage origami-games.core:gui Items[{Slot:7b}] run summon minecraft:item ~ ~1 ~ {Item:{id:"minecraft:stone",Count:1b},Tags:["lcore_gui_return_7"]}
data modify entity @e[distance=..3,type=item,limit=1,sort=nearest,tag=lcore_gui_return_7] Item set from storage origami-games.core:gui Items[{Slot:7b}]
execute if data storage origami-games.core:gui Items[{Slot:8b}] run summon minecraft:item ~ ~1 ~ {Item:{id:"minecraft:stone",Count:1b},Tags:["lcore_gui_return_8"]}
data modify entity @e[distance=..3,type=item,limit=1,sort=nearest,tag=lcore_gui_return_8] Item set from storage origami-games.core:gui Items[{Slot:8b}]
execute if data storage origami-games.core:gui Items[{Slot:9b}] run summon minecraft:item ~ ~1 ~ {Item:{id:"minecraft:stone",Count:1b},Tags:["lcore_gui_return_9"]}
data modify entity @e[distance=..3,type=item,limit=1,sort=nearest,tag=lcore_gui_return_9] Item set from storage origami-games.core:gui Items[{Slot:9b}]
execute if data storage origami-games.core:gui Items[{Slot:13b}] run summon minecraft:item ~ ~1 ~ {Item:{id:"minecraft:stone",Count:1b},Tags:["lcore_gui_return_13"]}
data modify entity @e[distance=..3,type=item,limit=1,sort=nearest,tag=lcore_gui_return_13] Item set from storage origami-games.core:gui Items[{Slot:13b}]
execute if data storage origami-games.core:gui Items[{Slot:14b}] run summon minecraft:item ~ ~1 ~ {Item:{id:"minecraft:stone",Count:1b},Tags:["lcore_gui_return_14"]}
data modify entity @e[distance=..3,type=item,limit=1,sort=nearest,tag=lcore_gui_return_14] Item set from storage origami-games.core:gui Items[{Slot:14b}]
execute if data storage origami-games.core:gui Items[{Slot:15b}] run summon minecraft:item ~ ~1 ~ {Item:{id:"minecraft:stone",Count:1b},Tags:["lcore_gui_return_15"]}
data modify entity @e[distance=..3,type=item,limit=1,sort=nearest,tag=lcore_gui_return_15] Item set from storage origami-games.core:gui Items[{Slot:15b}]
execute if data storage origami-games.core:gui Items[{Slot:17b}] run summon minecraft:item ~ ~1 ~ {Item:{id:"minecraft:stone",Count:1b},Tags:["lcore_gui_return_17"]}
data modify entity @e[distance=..3,type=item,limit=1,sort=nearest,tag=lcore_gui_return_17] Item set from storage origami-games.core:gui Items[{Slot:17b}]
execute if data storage origami-games.core:gui Items[{Slot:18b}] run summon minecraft:item ~ ~1 ~ {Item:{id:"minecraft:stone",Count:1b},Tags:["lcore_gui_return_18"]}
data modify entity @e[distance=..3,type=item,limit=1,sort=nearest,tag=lcore_gui_return_18] Item set from storage origami-games.core:gui Items[{Slot:18b}]
execute if data storage origami-games.core:gui Items[{Slot:22b}] run summon minecraft:item ~ ~1 ~ {Item:{id:"minecraft:stone",Count:1b},Tags:["lcore_gui_return_22"]}
data modify entity @e[distance=..3,type=item,limit=1,sort=nearest,tag=lcore_gui_return_22] Item set from storage origami-games.core:gui Items[{Slot:22b}]
execute if data storage origami-games.core:gui Items[{Slot:23b}] run summon minecraft:item ~ ~1 ~ {Item:{id:"minecraft:stone",Count:1b},Tags:["lcore_gui_return_23"]}
data modify entity @e[distance=..3,type=item,limit=1,sort=nearest,tag=lcore_gui_return_23] Item set from storage origami-games.core:gui Items[{Slot:23b}]
execute if data storage origami-games.core:gui Items[{Slot:24b}] run summon minecraft:item ~ ~1 ~ {Item:{id:"minecraft:stone",Count:1b},Tags:["lcore_gui_return_24"]}
data modify entity @e[distance=..3,type=item,limit=1,sort=nearest,tag=lcore_gui_return_24] Item set from storage origami-games.core:gui Items[{Slot:24b}]
execute if data storage origami-games.core:gui Items[{Slot:25b}] run summon minecraft:item ~ ~1 ~ {Item:{id:"minecraft:stone",Count:1b},Tags:["lcore_gui_return_25"]}
data modify entity @e[distance=..3,type=item,limit=1,sort=nearest,tag=lcore_gui_return_25] Item set from storage origami-games.core:gui Items[{Slot:25b}]
execute if data storage origami-games.core:gui Items[{Slot:26b}] run summon minecraft:item ~ ~1 ~ {Item:{id:"minecraft:stone",Count:1b},Tags:["lcore_gui_return_26"]}
data modify entity @e[distance=..3,type=item,limit=1,sort=nearest,tag=lcore_gui_return_26] Item set from storage origami-games.core:gui Items[{Slot:26b}]

#reset all gui items
function origami-games.core:block/gui/fix_gui_items

#return the gui items to the synthesizer
function origami-games.core:block/synthesizer/gui/reset/return_items
