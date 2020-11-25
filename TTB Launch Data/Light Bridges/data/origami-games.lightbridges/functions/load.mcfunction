#notify load
execute if score $Light_Bridges lcore_enabled matches 1.. run tellraw @a [{"text":"TTB Launch Light Bridges: ","color":"aqua","clickEvent":{"action":"open_url","value":"https://github.com/the-argus/ttb-launch"}},{"text":"Loaded","color":"dark_aqua"}]
execute unless entity @a run say Light Bridges: Loaded

#initialize scoreboards
scoreboard objectives add lb_power dummy "Power Level"
scoreboard objectives add lb_rotation dummy "Light Bridge Rotation"
scoreboard objectives add lb_counter dummy "Light Bridge Counter Variable"
scoreboard objectives add lb_length dummy "Current Bridge Length"
scoreboard objectives add lb_maxlength dummy "Maximum Bridge Length"

scoreboard players set $lengthMultiplier lb_counter 2

#clocks
function origami-games.lightbridges:block/light_bridges/clock16t
