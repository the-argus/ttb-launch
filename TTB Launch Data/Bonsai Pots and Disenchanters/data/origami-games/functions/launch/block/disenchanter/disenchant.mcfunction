#run disenchanter
#@s - disenchanter
#called by launch/crafting/recipe_validity_check

#audiovisuals
playsound entity.experience_orb.pickup block @a[distance=..10] ~ ~ ~ 1 0 1
playsound entity.experience_orb.pickup block @a[distance=..10] ~ ~ ~ 1 2 1

#copy enchantments
data modify block ~ ~ ~ Items[{Slot:8b}].id set value "minecraft:enchanted_book"
data modify block ~ ~ ~ Items[{Slot:8b}].tag.StoredEnchantments set from block ~ ~ ~ Items[{Slot:0b}].tag.Enchantments

#remove enchantments from source
data remove block ~ ~ ~ Items[{Slot:0b}].tag.Enchantments

#summon experience
summon experience_orb ~ ~1 ~ {Motion:[0d,.1d,0d],Value:20s,Tags:["lch_entity","lch_disenchanter_orb"]}
