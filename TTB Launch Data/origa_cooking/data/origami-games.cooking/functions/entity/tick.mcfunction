#called by tick

execute if entity @s[type=item_frame] run function origami-games.cooking:entity/item_frame/tick
execute if entity @s[type=item] run function origami-games.cooking:entity/item/tick

execute as @a[scores={inven_changed=1,food_consumed=0}] run function origami-games.cooking/entity/player/check_player_items
execute as @a[scores={inven_changed=1,food_consumed=1}] run function origami-games.cooking/entity/player/give_effects
execute as @a[scores={inven_changed=1,food_consumed=1}] run function origami-games.cooking/entity/player/check_player_items

scoreboard players set @a inven_changed 0
scoreboard players set @a food_consumed 0
