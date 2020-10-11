#called by entity/tick

# crockpot drop fixing
execute if entity @s[tag=cck_crockpot_item,nbt={PickupDelay:1s}] run data remove entity @s Item.tag
