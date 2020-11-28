#notify load
tellraw @a [{"text":"TTB Launch Gravity Pads: ","color":"aqua","clickEvent":{"action":"open_url","value":"https://github.com/the-argus/ttb-launch"}},{"text":"Loaded","color":"dark_aqua"}]
execute unless entity @a run say Gravity Pads: Loaded

#initialize scoreboards
scoreboard objectives add gp_sneaking minecraft.custom:minecraft.sneak_time
scoreboard objectives add gp_height dummy
scoreboard objectives add gp_counter dummy

#clocks
function origami-games.gravitypads:block/gravity_pads/clock16t
