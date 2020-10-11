#called by block/crockpot/cooking

#audiovisuals
playsound entity.item.pickup player @a[distance=..16] ~ ~ ~ 1 .75 1

#functionality
summon item ~ ~ ~ {Item:{id:stick,Count:1b,tag:{test:{origami-games:{cooking:{unique:[I; 1, 2, 3, 4]}}}}},Tags:["cck_entity","cck_crockpot_item","cck_crockpot_item_processing"],PickupDelay:300s,NoGravity:1b}
data modify entity @e[type=item,tag=cck_crockpot_item_processing,sort=nearest,limit=1] Item set from entity @s Item
execute store result entity @e[type=item,tag=cck_crockpot_item_processing,sort=nearest,limit=1] Item.tag.origami-games.cooking.unique int 1 run data get entity @e[type=item,tag=cck_crockpot_item_processing,sort=nearest,limit=1] UUID[0]
tag @e[type=item,tag=cck_crockpot_item,dx=0] remove cck_crockpot_item_processing
data modify entity @s Item.Count set value 0
