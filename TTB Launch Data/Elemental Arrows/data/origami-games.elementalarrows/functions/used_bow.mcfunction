#called by origami-games.core:tick
#@s = all players
execute if score @s ea_fired matches 1.. run function origami-games.elementalarrows:arrow_effects/arrow_effects

execute as @e[type=arrow,tag=ea_elemental] run function origami-games.elementalarrows:entity/arrow/tick
