# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick
# File Name: cooldown
# Function Name: dvz:tick/cooldown
# File Purpose: Resets scoreboard objectives related to all active items. Also plays a jingle when a player finishes their cooldown.
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2023.07.09
# Last Modified By: ropeFullOfHope
#
# Credit to:
#
# Comments: Uses a dual system to track ticks and seconds. Necessary because seconds are displayed in prompt messages, whereas ticks are the base minecraft time interval.
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

# Right click
execute as @s[scores={dvz.rclick.cooldown=1..}] run scoreboard players remove @s dvz.rclick.cooldown 1

# Builder - Summoning Book
execute as @s[scores={dvz.summoning_book.cool=1..}] run scoreboard players add @s dvz.summoning_book.tick 1
execute as @s[scores={dvz.summoning_book.tick=20..}] run scoreboard players remove @s dvz.summoning_book.cool 1
execute as @s[scores={dvz.summoning_book.tick=20..,dvz.summoning_book.cool=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 10 2
execute as @s[scores={dvz.summoning_book.tick=20..,dvz.summoning_book.cool=0}] run title @s actionbar ["",{"text":"[Summoning Book]","bold":true,"color":"blue"},{"text":" Recharged!","color":"blue"}]
execute as @s[scores={dvz.summoning_book.tick=20..}] run scoreboard players set @s dvz.summoning_book.tick 0

# Alchemist - Water Wand
execute as @s[scores={dvz.water_wand.cool=1..}] run scoreboard players add @s dvz.water_wand.tick 1
execute as @s[scores={dvz.water_wand.tick=20..}] run scoreboard players remove @s dvz.water_wand.cool 1
execute as @s[scores={dvz.water_wand.tick=20..,dvz.water_wand.cool=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 10 2
execute as @s[scores={dvz.water_wand.tick=20..}] run scoreboard players set @s dvz.water_wand.tick 0

# Dwarves - Pearl Rod
execute as @s[scores={dvz.pearl_rod.cool=1..}] run scoreboard players add @s dvz.pearl_rod.tick 1
execute as @s[scores={dvz.pearl_rod.tick=20..}] run scoreboard players remove @s dvz.pearl_rod.cool 1
execute as @s[scores={dvz.pearl_rod.tick=20..,dvz.pearl_rod.cool=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 10 2
execute as @s[scores={dvz.pearl_rod.tick=20..}] run scoreboard players set @s dvz.pearl_rod.tick 0

# Dwarven Guard - Elder Guardian Eye
execute as @s[scores={dvz.elder_guardian_eye.cool=1..}] run scoreboard players add @s dvz.elder_guardian_eye.tick 1
execute as @s[scores={dvz.elder_guardian_eye.tick=20..}] run scoreboard players remove @s dvz.elder_guardian_eye.cool 1
execute as @s[scores={dvz.elder_guardian_eye.tick=20..,dvz.elder_guardian_eye.cool=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 10 2
execute as @s[scores={dvz.elder_guardian_eye.tick=20..}] run scoreboard players set @s dvz.elder_guardian_eye.tick 0

# Guardian - Beam
execute as @s[scores={dvz.beam.cool=1..}] run scoreboard players add @s dvz.beam.tick 1
execute as @s[scores={dvz.beam.tick=20..}] run scoreboard players remove @s dvz.beam.cool 1
execute as @s[scores={dvz.beam.tick=20..,dvz.beam.cool=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 10 2
execute as @s[scores={dvz.beam.tick=20..}] run scoreboard players set @s dvz.beam.tick 0

# Spider - Web
execute as @s[scores={dvz.web.cool=1..}] run scoreboard players add @s dvz.web.tick 1
execute as @s[scores={dvz.web.tick=20..}] run scoreboard players remove @s dvz.web.cool 1
execute as @s[scores={dvz.web.tick=20..,dvz.web.cool=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 10 2
execute as @s[scores={dvz.web.tick=20..}] run scoreboard players set @s dvz.web.tick 0

# Ocelot - Steal Mana
execute as @s[scores={dvz.steal_mana.cool=1..}] run scoreboard players add @s dvz.steal_mana.tick 1
execute as @s[scores={dvz.steal_mana.tick=20..}] run scoreboard players remove @s dvz.steal_mana.cool 1
execute as @s[scores={dvz.steal_mana.tick=20..,dvz.steal_mana.cool=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 10 2
execute as @s[scores={dvz.steal_mana.tick=20..}] run scoreboard players set @s dvz.steal_mana.tick 0

# Chicken Nugget - Fly
execute as @s[scores={dvz.fly.cool=1..}] run scoreboard players add @s dvz.fly.tick 1
execute as @s[scores={dvz.fly.tick=20..}] run scoreboard players remove @s dvz.fly.cool 1
execute as @s[scores={dvz.fly.tick=20..,dvz.fly.cool=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 10 2
execute as @s[scores={dvz.fly.tick=20..}] run scoreboard players set @s dvz.fly.tick 0

# Snowman - Snowball Barrage
execute as @s[scores={dvz.snowball_barrage.cool=1..}] run scoreboard players add @s dvz.snowball_barrage.tick 1
execute as @s[scores={dvz.snowball_barrage.tick=20..}] run scoreboard players remove @s dvz.snowball_barrage.cool 1
execute as @s[scores={dvz.snowball_barrage.tick=20..,dvz.snowball_barrage.cool=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 10 2
execute as @s[scores={dvz.snowball_barrage.tick=20..}] run scoreboard players set @s dvz.snowball_barrage.tick 0

# Snowman - Icicle
execute as @s[scores={dvz.icicle.cool=1..}] run scoreboard players add @s dvz.icicle.tick 1
execute as @s[scores={dvz.icicle.tick=20..}] run scoreboard players remove @s dvz.icicle.cool 1
execute as @s[scores={dvz.icicle.tick=20..,dvz.icicle.cool=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 10 2
execute as @s[scores={dvz.icicle.tick=20..}] run scoreboard players set @s dvz.icicle.tick 0

# Chillager - Ice Cube
execute as @s[scores={dvz.ice_cube.cool=1..}] run scoreboard players add @s dvz.ice_cube.tick 1
execute as @s[scores={dvz.ice_cube.tick=20..}] run scoreboard players remove @s dvz.ice_cube.cool 1
execute as @s[scores={dvz.ice_cube.tick=20..,dvz.ice_cube.cool=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 10 2
execute as @s[scores={dvz.ice_cube.tick=20..}] run scoreboard players set @s dvz.ice_cube.tick 0

# Bee - Honey
execute as @s[scores={dvz.honey.cool=1..}] run scoreboard players add @s dvz.honey.tick 1
execute as @s[scores={dvz.honey.tick=20..}] run scoreboard players remove @s dvz.honey.cool 1
execute as @s[scores={dvz.honey.tick=20..,dvz.honey.cool=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 10 2
execute as @s[scores={dvz.honey.tick=20..}] run scoreboard players set @s dvz.honey.tick 0

# Bee - Pollen Bomb
execute as @s[scores={dvz.pollen_bomb.cool=1..}] run scoreboard players add @s dvz.pollen_bomb.tick 1
execute as @s[scores={dvz.pollen_bomb.tick=20..}] run scoreboard players remove @s dvz.pollen_bomb.cool 1
execute as @s[scores={dvz.pollen_bomb.tick=20..,dvz.pollen_bomb.cool=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 10 2
execute as @s[scores={dvz.pollen_bomb.tick=20..}] run scoreboard players set @s dvz.pollen_bomb.tick 0

# Phantom - Delirium
execute as @s[scores={dvz.delirium.cool=1..}] run scoreboard players add @s dvz.delirium.tick 1
execute as @s[scores={dvz.delirium.tick=20..}] run scoreboard players remove @s dvz.delirium.cool 1
execute as @s[scores={dvz.delirium.tick=20..,dvz.delirium.cool=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 10 2
execute as @s[scores={dvz.delirium.tick=20..}] run scoreboard players set @s dvz.delirium.tick 0

# Blaze - Fireball
execute as @s[scores={dvz.fireball.cool=1..}] run scoreboard players add @s dvz.fireball.tick 1
execute as @s[scores={dvz.fireball.tick=20..}] run scoreboard players remove @s dvz.fireball.cool 1
execute as @s[scores={dvz.fireball.tick=20..,dvz.fireball.cool=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 10 2
execute as @s[scores={dvz.fireball.tick=20..}] run scoreboard players set @s dvz.fireball.tick 0

# Blaze - Fireblast
execute as @s[scores={dvz.fireblast.cool=1..}] run scoreboard players add @s dvz.fireblast.tick 1
execute as @s[scores={dvz.fireblast.tick=20..}] run scoreboard players remove @s dvz.fireblast.cool 1
execute as @s[scores={dvz.fireblast.tick=20..,dvz.fireblast.cool=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 10 2
execute as @s[scores={dvz.fireblast.tick=20..}] run scoreboard players set @s dvz.fireblast.tick 0

# Blaze - Firefly
execute as @s[scores={dvz.firefly.cool=1..}] run scoreboard players add @s dvz.firefly.tick 1
execute as @s[scores={dvz.firefly.tick=20..}] run scoreboard players remove @s dvz.firefly.cool 1
execute as @s[scores={dvz.firefly.tick=20..,dvz.firefly.cool=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 10 2
execute as @s[scores={dvz.firefly.tick=20..}] run scoreboard players set @s dvz.firefly.tick 0

# Silverfish - Roar
execute as @s[scores={dvz.roar.cool=1..}] run scoreboard players add @s dvz.roar.tick 1
execute as @s[scores={dvz.roar.tick=20..}] run scoreboard players remove @s dvz.roar.cool 1
execute as @s[scores={dvz.roar.tick=20..,dvz.roar.cool=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 10 2
execute as @s[scores={dvz.roar.tick=20..}] run scoreboard players set @s dvz.roar.tick 0

# Golem - Fissure
execute as @s[scores={dvz.fissure.cool=1..}] run scoreboard players add @s dvz.fissure.tick 1
execute as @s[scores={dvz.fissure.tick=20..}] run scoreboard players remove @s dvz.fissure.cool 1
execute as @s[scores={dvz.fissure.tick=20..,dvz.fissure.cool=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 10 2
execute as @s[scores={dvz.fissure.tick=20..}] run scoreboard players set @s dvz.fissure.tick 0

# Enderman - Teleport
execute as @s[scores={dvz.teleport.cool=1..}] run scoreboard players add @s dvz.teleport.tick 1
execute as @s[scores={dvz.teleport.tick=20..}] run scoreboard players remove @s dvz.teleport.cool 1
execute as @s[scores={dvz.teleport.tick=20..,dvz.teleport.cool=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 10 2
execute as @s[scores={dvz.teleport.tick=20..}] run scoreboard players set @s dvz.teleport.tick 0

# Enderman - Portal
execute as @s[scores={dvz.portal.cool=1..}] run scoreboard players add @s dvz.portal.tick 1
execute as @s[scores={dvz.portal.tick=20..}] run scoreboard players remove @s dvz.portal.cool 1
execute as @s[scores={dvz.portal.tick=20..,dvz.portal.cool=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 10 2
execute as @s[scores={dvz.portal.tick=20..}] run scoreboard players set @s dvz.portal.tick 0

# Enderman - Portal Teleport
execute as @s[scores={dvz.reinforce.cool=1..}] run scoreboard players add @s dvz.reinforce.tick 1
execute as @s[scores={dvz.reinforce.tick=20..}] run scoreboard players remove @s dvz.reinforce.cool 1
execute as @s[scores={dvz.reinforce.tick=20..,dvz.reinforce.cool=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 10 2
execute as @s[scores={dvz.reinforce.tick=20..}] run scoreboard players set @s dvz.reinforce.tick 0