#called by tick

# gui
execute if block ~ ~ ~ barrel run function ttb:block/tempest_crafter/gui/verify_integrity_check

# destroy
execute unless block ~ ~ ~ barrel[facing=up]{CustomName:'{"translate":"block.origami-games.core.synthesizer"}'} run function origami-games.core:block/synthesizer/remove
