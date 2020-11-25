#extend
#execute if entity @s[tag=lb_powered] if score @s lb_length < @s lb_maxlength run scoreboard players operation @s lb_length += $lengthMultiplier lb_counter
execute if entity @s[tag=lb_powered] if score @s lb_length < @s lb_maxlength run scoreboard players operation @s lb_length = @s lb_maxlength

#retract
#execute unless entity @s[tag=lb_powered] if score @s lb_length >= $lengthMultiplier lb_counter run scoreboard players operation @s lb_length -= $lengthMultiplier lb_counter
execute unless entity @s[tag=lb_powered] if score @s lb_length >= $lengthMultiplier lb_counter run scoreboard players set @s lb_length 0

#set changes to bridge
execute if entity @s[tag=lb_powered] run function origami-games.lightbridges:block/light_bridges/set_bridge

#display particles
execute if entity @s[tag=lb_powered] run function origami-games.lightbridges:block/light_bridges/display_particles
