# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: MINECRAFT
# File Name: tick
# Function Name: ogvz:tick
# File Purpose: Called every tick to execute anything that needs to be executed every tick.
# Created By: ropeFullOfHope
# 
# Created On: 2023.06.30
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments: Should contain only function/schedule calls.
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

# Game functions
execute as @a[tag=!ogvz.initialized] at @s run function ogvz:tick/player_join_server
execute as @a[scores={ogvz.misc.leave_game=1..}] at @s run function ogvz:tick/player_rejoin_server
execute as @a[tag=ogvz.kill] at @s run function ogvz:tick/kill_player
function ogvz:tick/timer
function ogvz:tick/day_time
function ogvz:tick/shrine_health
function ogvz:tick/update_bossbars
function ogvz:tick/update_sidebar
function ogvz:tick/kill_entities
execute as @a at @s run function ogvz:tick/triggers
execute as @e[type=minecraft:player,tag=ogvz.dead] at @s run function ogvz:tick/player_respawn
execute as @e[type=minecraft:item,tag=!ogvz.processed] at @s run function ogvz:tick/check_item

# Detect functions
execute as @a at @s run function ogvz:tick/passive_detect
execute as @a at @s run function ogvz:tick/active_detect

# Cooldown/warmup functions
execute as @a at @s run function ogvz:tick/active_cooldown

# Custom functions
execute as @a[predicate=ogvz:effect/unluck] at @s run function ogvz:tick/custom_instant_effects
execute as @a at @s run function ogvz:tick/custom_enchantments
execute as @a at @s run function ogvz:tick/custom_bars

# Multitick functions
function ogvz:tick/multitick_items
function ogvz:tick/multitick_abilities

# Mana functions
execute as @a[tag=ogvz.dwarf,tag=ogvz.mana] at @s run function ogvz:tick/mana_buildup
execute as @a[tag=ogvz.mana,scores={ogvz.dwarf.mana_buildup.micromana=1000000..}] at @s run function ogvz:tick/micromana_add
execute as @a[tag=ogvz.mana,scores={ogvz.dwarf.mana_buildup.micromana=..-1000000}] at @s run function ogvz:tick/micromana_subtract
execute as @a[tag=ogvz.mana,scores={ogvz.dwarf.mana_buildup.mana=1..}] at @s run function ogvz:tick/mana_add
execute as @a[tag=ogvz.mana,scores={ogvz.dwarf.mana_buildup.mana=..-1}] at @s run function ogvz:tick/mana_subtract

# Misc functions
execute as @a[tag=ogvz.zombie] at @s run function ogvz:tick/innate_abilities
execute as @e[type=#minecraft:arrows,tag=!temp.processed] at @s run function ogvz:tick/arrow_check
execute as @a[gamemode=!creative,gamemode=!spectator] at @s run function ogvz:tick/adventure_mode_toggle
execute as @a[tag=ogvz.dwarf] at @s run function ogvz:tick/zones
execute as @a[tag=!ogvz.admin] at @s run function ogvz:tick/lava_bucket
execute as @a at @s run function ogvz:tick/frozen_custom_effect
execute as @a at @s run function ogvz:tick/dolphins_grace_nerf
execute as @a at @s run function ogvz:tick/natural_regeneration
execute as @e[scores={ogvz.misc.air_toggle=-2147483648..2147483647}] at @s run function ogvz:tick/air_toggle
function ogvz:tick/particles
