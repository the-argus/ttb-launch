#runs on load
#called by #cardboard:load

#notify load
tellraw @a [{"text":"Launch: ","color":"aqua","clickEvent":{"action":"open_url","value":"https://origami-games.github.io/launch"}},{"text":"Loaded","color":"dark_aqua"}]
execute unless entity @a[limit=1] run say Launch: Loaded

#build check
#function origami-games:launch/build/check

#initialise scoreboards
scoreboard objectives add lch_general dummy
scoreboard objectives add lch_clock dummy

scoreboard objectives add lch_snd_ambient dummy
scoreboard objectives add lch_snd_hlt dummy
scoreboard objectives add lch_snd_hlt_prev dummy

scoreboard objectives add lch_tp_motion_x dummy
scoreboard objectives add lch_tp_motion_y dummy
scoreboard objectives add lch_tp_motion_z dummy
scoreboard objectives add lch_tp_motion_dx dummy
scoreboard objectives add lch_tp_motion_dy dummy
scoreboard objectives add lch_tp_motion_dz dummy

scoreboard objectives add lch_time dummy
scoreboard players set #year_length lch_time 48
scoreboard players set #month_amount lch_time 12
scoreboard players set #season_amount lch_time 4

scoreboard objectives add lch_biome dummy
scoreboard objectives add lch_world_gen dummy
scoreboard players set $end_chorus_speed_up_start lch_world_gen 20
scoreboard objectives add lch_end_pllr_sze dummy

scoreboard objectives add lch_pl_y dummy
scoreboard players set $redstonic_locator_limit lch_pl_y 16

scoreboard objectives add lch_lb_insp_drop minecraft.custom:minecraft.inspect_dropper
scoreboard objectives add lch_lb_rotation dummy
scoreboard objectives add lch_lb_status dummy
scoreboard objectives add lch_lb_statuspre dummy
scoreboard objectives add lch_lb_ray_scss dummy
scoreboard objectives add lch_lb_ray dummy
scoreboard players set $limit lch_lb_ray 31

scoreboard objectives add lch_bp_count dummy

scoreboard objectives add lch_gp_cooldown dummy
scoreboard players set $start lch_gp_cooldown 10

scoreboard objectives add lch_cstar_usebow minecraft.used:minecraft.bow
scoreboard objectives add lch_cstar_usecsb minecraft.used:minecraft.crossbow
scoreboard objectives add lch_custo_arprev dummy
scoreboard objectives add lch_expls_ar dummy
scoreboard objectives add lch_expls_arprev dummy
scoreboard objectives add lch_light_ar dummy
scoreboard objectives add lch_light_arprev dummy
scoreboard objectives add lch_ender_ar dummy
scoreboard objectives add lch_ender_arprev dummy
scoreboard objectives add lch_torch_ar dummy
scoreboard objectives add lch_torch_arprev dummy

scoreboard objectives add lch_atas_rdstore dummy

scoreboard objectives add lch_mo_sp_spwnr dummy
scoreboard objectives add lch_mo_sp_biome dummy
scoreboard objectives add lch_mo_sp_random dummy
scoreboard players set $custom_threshold lch_mo_sp_random 5
scoreboard players set #-1 lch_mo_sp_random -1

scoreboard objectives add lch_slot_size dummy
scoreboard objectives add lch_slot_count dummy

#start clock
function origami-games:launch/clock16
function origami-games:launch/world/overworld/clock4
