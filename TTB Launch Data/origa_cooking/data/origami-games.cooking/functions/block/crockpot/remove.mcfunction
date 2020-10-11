#called by block/crockpot/tick

playsound block.grindstone.use block @a
playsound block.metal.break block @a

loot spawn ~ ~ ~ loot minecraft:items/item_frame

#remove entity
kill @s[type=!player]
