#@s - synthesiser
#called by launch/entity/armour_stand_management

#removal
execute unless block ~ ~ ~ dropper[facing=up]{CustomName:'{"translate":"block.launch.synthesiser"}'} run function origami-games:launch/block/synthesiser/remove

#recipes
execute if block ~ ~ ~ dropper[triggered=false]{Items:[{}]} run function origami-games:launch/crafting/recipe_validity_check
