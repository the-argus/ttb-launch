#called by block/.../remove
execute if block ~ ~-1 ~ hopper run data remove block ~ ~-1 ~ Items[{tag:{lcore:{gui_item:1b}}}]
execute if block ~ ~-2 ~ hopper run data remove block ~ ~-2 ~ Items[{tag:{lcore:{gui_item:1b}}}]
execute as @e[type=hopper_minecart,distance=..5] run data remove entity @s Items[{tag:{lcore:{gui_item:1b}}}]
kill @e[type=item,nbt={Item:{tag:{lcore:{gui_item:1b}}}}]
clear @a barrier{lcore:{gui_item:1b}}
