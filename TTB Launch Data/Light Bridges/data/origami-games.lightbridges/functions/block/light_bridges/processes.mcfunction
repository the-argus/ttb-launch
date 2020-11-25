#called by origami-games.core/tick

#removal
execute unless block ~ ~ ~ redstone_lamp run function origami-games.lightbridges:block/light_bridges/remove

#get power if the lamp has been turned on
execute unless entity @s[tag=lb_powered] if block ~ ~ ~ redstone_lamp[lit=true] run function origami-games.lightbridges:block/light_bridges/powered
#remove tag when lamp turns off
execute if entity @s[tag=lb_powered] if block ~ ~ ~ redstone_lamp[lit=false] run function origami-games.lightbridges:block/light_bridges/unpowered

#extend bridge
execute if entity @s[tag=lb_powered] if score @s lb_length < @s lb_maxlength run function origami-games.lightbridges:block/light_bridges/length_change

#retract bridge
execute unless entity @s[tag=lb_powered] if score @s lb_length >= $lengthMultiplier lb_counter run function origami-games.lightbridges:block/light_bridges/length_change
