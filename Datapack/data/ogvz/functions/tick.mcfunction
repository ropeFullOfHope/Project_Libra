# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: MINECRAFT
# File Name: tick
# Function Name: dvz:tick
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

execute as @a at @s run function dvz:tick/passive_detect
execute as @a at @s run function dvz:tick/held_detect
execute as @a at @s run function dvz:tick/active_detect
execute as @a at @s run function dvz:tick/cooldown
execute as @e[type=minecraft:arrow,tag=!enchantments_applied] at @s run function dvz:tick/arrow_custom_enchantments
function dvz:tick/custom_luck_effects
function dvz:tick/custom_effects
function dvz:tick/lasting_abilities
execute as @e[tag=air_time] at @s run function dvz:tick/air_time
function dvz:tick/ai_mob_teams
execute as @a[tag=dwarves,tag=mana] at @s run function dvz:tick/mana_buildup
execute as @a[tag=mana,scores={ogvz.dwarf.mana_buildup=1000..}] at @s run function dvz:tick/mana_add
execute as @a[tag=mana,scores={ogvz.dwarf.mana_buildup=..-1000}] at @s run function dvz:tick/mana_subtract
execute as @a[tag=hoglin] at @s run function dvz:tick/adventure_switch
execute as @a at @s run function dvz:tick/custom_bars
execute as @a[tag=portal_bound] at @s run function dvz:tick/portal_bind
execute as @a[tag=!admin] at @s run function dvz:tick/lava_bucket
execute as @a[tag=!admin,tag=!creative_flight,gamemode=creative] at @s run function dvz:tick/admin
execute as @a[tag=admin] at @s run function dvz:tick/shrine_proximity
execute as @e[type=minecraft:item,tag=!processed] at @s run function dvz:tick/check_item
execute as @a[tag=!DVZ_ready] at @s run function dvz:tick/dvz_ready
execute as @a[scores={ogvz.misc.leave_game=1..}] at @s run function dvz:tick/player_join

scoreboard players set Dwarves ogvz.game.player_count 0
execute as @a[tag=dwarves] run scoreboard players add Dwarves ogvz.game.player_count 1
scoreboard players set Zombies ogvz.game.player_count 0
execute as @a[tag=zombies] run scoreboard players add Zombies ogvz.game.player_count 1

scoreboard players add &dvz ogvz.game.time 1
execute store result bossbar dvz:boss_timer value run scoreboard players get &dvz ogvz.game.time

kill @e[type=minecraft:experience_orb]
kill @e[type=minecraft:experience_bottle]

scoreboard players remove @a[tag=wither_warrior,scores={ogvz.wither_warrior.whispersong.flame.ticks=1..}] ogvz.wither_warrior.whispersong.flame.ticks 1