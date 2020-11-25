#called by origami-games.core/tick

#removal
execute unless block ~ ~ ~ dropper[facing=up]{CustomName:'{"translate":"block.launch.gravity_pad"}'} run function origami-games.gravitypads:block/gravity_pads/remove
