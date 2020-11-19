#notify load
tellraw @a [{"text":"TTB Launch Disenchanters: ","color":"aqua","clickEvent":{"action":"open_url","value":"https://github.com/the-argus/ttb-launch"}},{"text":"Loaded","color":"dark_aqua"}]
execute unless entity @a run say Disenchanters: Loaded

#initialize scoreboards
#scoreboard objectives add de_slot_count dummy
#scoreboard objectives add de_slot_size dummy
