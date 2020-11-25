#notify load
execute if score $Light_Bridges lcore_enabled matches 1.. run tellraw @a [{"text":"TTB Launch Bonsai Pots: ","color":"aqua","clickEvent":{"action":"open_url","value":"https://github.com/the-argus/ttb-launch"}},{"text":"Loaded","color":"dark_aqua"}]
execute unless entity @a run say Bonsai Pots: Loaded

#initialise scoreboards
scoreboard objectives add bp_count dummy
scoreboard objectives add bp_clock dummy
