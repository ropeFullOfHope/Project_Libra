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
execute as @s[scores={DVZ.rclick.cool=1..}] run scoreboard players remove @s DVZ.rclick.cool 1

# Builder - Summoning Book
execute as @s[scores={DVZ.summoning_book.cool=1..}] run scoreboard players add @s DVZ.summoning_book.tick 1
execute as @s[scores={DVZ.summoning_book.tick=20..}] run scoreboard players remove @s DVZ.summoning_book.cool 1
execute as @s[scores={DVZ.summoning_book.tick=20..,DVZ.summoning_book.cool=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 10 2
execute as @s[scores={DVZ.summoning_book.tick=20..,DVZ.summoning_book.cool=0}] run title @s actionbar ["",{"text":"[Summoning Book]","bold":true,"color":"blue"},{"text":" Recharged!","color":"blue"}]
execute as @s[scores={DVZ.summoning_book.tick=20..}] run scoreboard players set @s DVZ.summoning_book.tick 0

# Alchemist - Water Wand
execute as @s[scores={DVZ.water_wand.cool=1..}] run scoreboard players add @s DVZ.water_wand.tick 1
execute as @s[scores={DVZ.water_wand.tick=20..}] run scoreboard players remove @s DVZ.water_wand.cool 1
execute as @s[scores={DVZ.water_wand.tick=20..,DVZ.water_wand.cool=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 10 2
execute as @s[scores={DVZ.water_wand.tick=20..}] run scoreboard players set @s DVZ.water_wand.tick 0

# Dwarves - Pearl Rod
execute as @s[scores={DVZ.pearl_rod.cool=1..}] run scoreboard players add @s DVZ.pearl_rod.tick 1
execute as @s[scores={DVZ.pearl_rod.tick=20..}] run scoreboard players remove @s DVZ.pearl_rod.cool 1
execute as @s[scores={DVZ.pearl_rod.tick=20..,DVZ.pearl_rod.cool=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 10 2
execute as @s[scores={DVZ.pearl_rod.tick=20..}] run scoreboard players set @s DVZ.pearl_rod.tick 0

# Dwarven Guard - Elder Guardian Eye
execute as @s[scores={DVZ.elder_guardian_eye.cool=1..}] run scoreboard players add @s DVZ.elder_guardian_eye.tick 1
execute as @s[scores={DVZ.elder_guardian_eye.tick=20..}] run scoreboard players remove @s DVZ.elder_guardian_eye.cool 1
execute as @s[scores={DVZ.elder_guardian_eye.tick=20..,DVZ.elder_guardian_eye.cool=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 10 2
execute as @s[scores={DVZ.elder_guardian_eye.tick=20..}] run scoreboard players set @s DVZ.elder_guardian_eye.tick 0

# Guardian - Beam
execute as @s[scores={DVZ.beam.cool=1..}] run scoreboard players add @s DVZ.beam.tick 1
execute as @s[scores={DVZ.beam.tick=20..}] run scoreboard players remove @s DVZ.beam.cool 1
execute as @s[scores={DVZ.beam.tick=20..,DVZ.beam.cool=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 10 2
execute as @s[scores={DVZ.beam.tick=20..}] run scoreboard players set @s DVZ.beam.tick 0

# Spider - Web
execute as @s[scores={DVZ.web.cool=1..}] run scoreboard players add @s DVZ.web.tick 1
execute as @s[scores={DVZ.web.tick=20..}] run scoreboard players remove @s DVZ.web.cool 1
execute as @s[scores={DVZ.web.tick=20..,DVZ.web.cool=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 10 2
execute as @s[scores={DVZ.web.tick=20..}] run scoreboard players set @s DVZ.web.tick 0

# Ocelot - Steal Mana
execute as @s[scores={DVZ.steal_mana.cool=1..}] run scoreboard players add @s DVZ.steal_mana.tick 1
execute as @s[scores={DVZ.steal_mana.tick=20..}] run scoreboard players remove @s DVZ.steal_mana.cool 1
execute as @s[scores={DVZ.steal_mana.tick=20..,DVZ.steal_mana.cool=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 10 2
execute as @s[scores={DVZ.steal_mana.tick=20..}] run scoreboard players set @s DVZ.steal_mana.tick 0

# Chicken Nugget - Fly
execute as @s[scores={DVZ.fly.cool=1..}] run scoreboard players add @s DVZ.fly.tick 1
execute as @s[scores={DVZ.fly.tick=20..}] run scoreboard players remove @s DVZ.fly.cool 1
execute as @s[scores={DVZ.fly.tick=20..,DVZ.fly.cool=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 10 2
execute as @s[scores={DVZ.fly.tick=20..}] run scoreboard players set @s DVZ.fly.tick 0

# Snowman - Snowball Barrage
execute as @s[scores={DVZ.snowball_barrage.cool=1..}] run scoreboard players add @s DVZ.snowball_barrage.tick 1
execute as @s[scores={DVZ.snowball_barrage.tick=20..}] run scoreboard players remove @s DVZ.snowball_barrage.cool 1
execute as @s[scores={DVZ.snowball_barrage.tick=20..,DVZ.snowball_barrage.cool=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 10 2
execute as @s[scores={DVZ.snowball_barrage.tick=20..}] run scoreboard players set @s DVZ.snowball_barrage.tick 0

# Snowman - Icicle
execute as @s[scores={DVZ.icicle.cool=1..}] run scoreboard players add @s DVZ.icicle.tick 1
execute as @s[scores={DVZ.icicle.tick=20..}] run scoreboard players remove @s DVZ.icicle.cool 1
execute as @s[scores={DVZ.icicle.tick=20..,DVZ.icicle.cool=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 10 2
execute as @s[scores={DVZ.icicle.tick=20..}] run scoreboard players set @s DVZ.icicle.tick 0

# Chillager - Ice Cube
execute as @s[scores={DVZ.ice_cube.cool=1..}] run scoreboard players add @s DVZ.ice_cube.tick 1
execute as @s[scores={DVZ.ice_cube.tick=20..}] run scoreboard players remove @s DVZ.ice_cube.cool 1
execute as @s[scores={DVZ.ice_cube.tick=20..,DVZ.ice_cube.cool=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 10 2
execute as @s[scores={DVZ.ice_cube.tick=20..}] run scoreboard players set @s DVZ.ice_cube.tick 0

# Bee - Honey
execute as @s[scores={DVZ.honey.cool=1..}] run scoreboard players add @s DVZ.honey.tick 1
execute as @s[scores={DVZ.honey.tick=20..}] run scoreboard players remove @s DVZ.honey.cool 1
execute as @s[scores={DVZ.honey.tick=20..,DVZ.honey.cool=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 10 2
execute as @s[scores={DVZ.honey.tick=20..}] run scoreboard players set @s DVZ.honey.tick 0

# Bee - Pollen Bomb
execute as @s[scores={DVZ.pollen_bomb.cool=1..}] run scoreboard players add @s DVZ.pollen_bomb.tick 1
execute as @s[scores={DVZ.pollen_bomb.tick=20..}] run scoreboard players remove @s DVZ.pollen_bomb.cool 1
execute as @s[scores={DVZ.pollen_bomb.tick=20..,DVZ.pollen_bomb.cool=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 10 2
execute as @s[scores={DVZ.pollen_bomb.tick=20..}] run scoreboard players set @s DVZ.pollen_bomb.tick 0

# Phantom - Delirium
execute as @s[scores={DVZ.delirium.cool=1..}] run scoreboard players add @s DVZ.delirium.tick 1
execute as @s[scores={DVZ.delirium.tick=20..}] run scoreboard players remove @s DVZ.delirium.cool 1
execute as @s[scores={DVZ.delirium.tick=20..,DVZ.delirium.cool=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 10 2
execute as @s[scores={DVZ.delirium.tick=20..}] run scoreboard players set @s DVZ.delirium.tick 0

# Blaze - Fireball
execute as @s[scores={DVZ.fireball.cool=1..}] run scoreboard players add @s DVZ.fireball.tick 1
execute as @s[scores={DVZ.fireball.tick=20..}] run scoreboard players remove @s DVZ.fireball.cool 1
execute as @s[scores={DVZ.fireball.tick=20..,DVZ.fireball.cool=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 10 2
execute as @s[scores={DVZ.fireball.tick=20..}] run scoreboard players set @s DVZ.fireball.tick 0

# Blaze - Fireblast
execute as @s[scores={DVZ.fireblast.cool=1..}] run scoreboard players add @s DVZ.fireblast.tick 1
execute as @s[scores={DVZ.fireblast.tick=20..}] run scoreboard players remove @s DVZ.fireblast.cool 1
execute as @s[scores={DVZ.fireblast.tick=20..,DVZ.fireblast.cool=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 10 2
execute as @s[scores={DVZ.fireblast.tick=20..}] run scoreboard players set @s DVZ.fireblast.tick 0

# Blaze - Firefly
execute as @s[scores={DVZ.firefly.cool=1..}] run scoreboard players add @s DVZ.firefly.tick 1
execute as @s[scores={DVZ.firefly.tick=20..}] run scoreboard players remove @s DVZ.firefly.cool 1
execute as @s[scores={DVZ.firefly.tick=20..,DVZ.firefly.cool=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 10 2
execute as @s[scores={DVZ.firefly.tick=20..}] run scoreboard players set @s DVZ.firefly.tick 0

# Silverfish - Roar
execute as @s[scores={DVZ.roar.cool=1..}] run scoreboard players add @s DVZ.roar.tick 1
execute as @s[scores={DVZ.roar.tick=20..}] run scoreboard players remove @s DVZ.roar.cool 1
execute as @s[scores={DVZ.roar.tick=20..,DVZ.roar.cool=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 10 2
execute as @s[scores={DVZ.roar.tick=20..}] run scoreboard players set @s DVZ.roar.tick 0

# Golem - Fissure
execute as @s[scores={DVZ.fissure.cool=1..}] run scoreboard players add @s DVZ.fissure.tick 1
execute as @s[scores={DVZ.fissure.tick=20..}] run scoreboard players remove @s DVZ.fissure.cool 1
execute as @s[scores={DVZ.fissure.tick=20..,DVZ.fissure.cool=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 10 2
execute as @s[scores={DVZ.fissure.tick=20..}] run scoreboard players set @s DVZ.fissure.tick 0

# Enderman - Teleport
execute as @s[scores={DVZ.teleport.cool=1..}] run scoreboard players add @s DVZ.teleport.tick 1
execute as @s[scores={DVZ.teleport.tick=20..}] run scoreboard players remove @s DVZ.teleport.cool 1
execute as @s[scores={DVZ.teleport.tick=20..,DVZ.teleport.cool=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 10 2
execute as @s[scores={DVZ.teleport.tick=20..}] run scoreboard players set @s DVZ.teleport.tick 0

# Enderman - Portal
execute as @s[scores={DVZ.portal.cool=1..}] run scoreboard players add @s DVZ.portal.tick 1
execute as @s[scores={DVZ.portal.tick=20..}] run scoreboard players remove @s DVZ.portal.cool 1
execute as @s[scores={DVZ.portal.tick=20..,DVZ.portal.cool=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 10 2
execute as @s[scores={DVZ.portal.tick=20..}] run scoreboard players set @s DVZ.portal.tick 0

# Enderman - Portal Teleport
execute as @s[scores={DVZ.reinforce.cool=1..}] run scoreboard players add @s DVZ.reinforce.tick 1
execute as @s[scores={DVZ.reinforce.tick=20..}] run scoreboard players remove @s DVZ.reinforce.cool 1
execute as @s[scores={DVZ.reinforce.tick=20..,DVZ.reinforce.cool=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 10 2
execute as @s[scores={DVZ.reinforce.tick=20..}] run scoreboard players set @s DVZ.reinforce.tick 0