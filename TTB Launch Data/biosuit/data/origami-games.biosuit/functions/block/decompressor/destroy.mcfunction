#called by block/decompressor/tick

# reimburse items
execute align xyz if entity @e[type=item,dx=0,nbt={Item:{id:"minecraft:andesite"}}] run loot spawn ~.5 ~ ~.5 loot origami-games.biosuit:blocks/decompressor

#kill entities
kill @s[type=!player]
execute align xyz run kill @e[type=item,dx=0,nbt={Item:{id:"minecraft:andesite"}}]
