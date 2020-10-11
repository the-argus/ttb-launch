#@s - disenchanter
#called by launch/entity/armour_stand_management

#removal
execute unless block ~ ~ ~ dropper[facing=up]{CustomName:'{"translate":"block.launch.disenchanter"}'} run function origami-games:launch/block/disenchanter/remove

#recipes
execute if block ~ ~ ~ dropper[triggered=false]{Items:[{tag:{Enchantments:[{}]},Slot:0b},{id:"minecraft:book",Count:1b,Slot:8b}]} run function origami-games:launch/crafting/recipe_validity_check
