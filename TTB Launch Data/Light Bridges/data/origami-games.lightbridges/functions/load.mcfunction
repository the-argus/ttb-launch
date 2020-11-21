#notify load
tellraw @a [{"text":"TTB Launch Light Bridges: ","color":"aqua","clickEvent":{"action":"open_url","value":"https://github.com/the-argus/ttb-launch"}},{"text":"Loaded","color":"dark_aqua"}]
execute unless entity @a run say Light Bridges: Loaded
