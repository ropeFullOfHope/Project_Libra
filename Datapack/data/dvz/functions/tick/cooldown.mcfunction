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
execute as @s[scores={dvz.builder.summoning_book.cooldown.seconds=1..}] run scoreboard players add @s dvz.builder.summoning_book.cooldown.ticks 1
execute as @s[scores={dvz.builder.summoning_book.cooldown.ticks=20..}] run scoreboard players remove @s dvz.builder.summoning_book.cooldown.seconds 1
execute as @s[scores={dvz.builder.summoning_book.cooldown.ticks=20..,dvz.builder.summoning_book.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 10 2
execute as @s[scores={dvz.builder.summoning_book.cooldown.ticks=20..,dvz.builder.summoning_book.cooldown.seconds=0}] run title @s actionbar ["",{"text":"[Summoning Book]","bold":true,"color":"blue"},{"text":" Recharged!","color":"blue"}]
execute as @s[scores={dvz.builder.summoning_book.cooldown.ticks=20..}] run scoreboard players set @s dvz.builder.summoning_book.cooldown.ticks 0

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
execute as @s[scores={dvz.guardian.beam.cooldown.seconds=1..}] run scoreboard players add @s dvz.guardian.beam.cooldown.ticks 1
execute as @s[scores={dvz.guardian.beam.cooldown.ticks=20..}] run scoreboard players remove @s dvz.guardian.beam.cooldown.seconds 1
execute as @s[scores={dvz.guardian.beam.cooldown.ticks=20..,dvz.guardian.beam.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 10 2
execute as @s[scores={dvz.guardian.beam.cooldown.ticks=20..}] run scoreboard players set @s dvz.guardian.beam.cooldown.ticks 0

# Spider - Web
execute as @s[scores={dvz.spider.web.cooldown.seconds=1..}] run scoreboard players add @s dvz.spider.web.cooldown.ticks 1
execute as @s[scores={dvz.spider.web.cooldown.ticks=20..}] run scoreboard players remove @s dvz.spider.web.cooldown.seconds 1
execute as @s[scores={dvz.spider.web.cooldown.ticks=20..,dvz.spider.web.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 10 2
execute as @s[scores={dvz.spider.web.cooldown.ticks=20..}] run scoreboard players set @s dvz.spider.web.cooldown.ticks 0

# Ocelot - Steal Mana
execute as @s[scores={dvz.ocelot.steal_mana.cooldown.seconds=1..}] run scoreboard players add @s dvz.ocelot.steal_mana.cooldown.ticks 1
execute as @s[scores={dvz.ocelot.steal_mana.cooldown.ticks=20..}] run scoreboard players remove @s dvz.ocelot.steal_mana.cooldown.seconds 1
execute as @s[scores={dvz.ocelot.steal_mana.cooldown.ticks=20..,dvz.ocelot.steal_mana.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 10 2
execute as @s[scores={dvz.ocelot.steal_mana.cooldown.ticks=20..}] run scoreboard players set @s dvz.ocelot.steal_mana.cooldown.ticks 0

# Chicken Nugget - Fly
execute as @s[scores={dvz.chicken_nugget.fly.cooldown.seconds=1..}] run scoreboard players add @s dvz.chicken_nugget.fly.cooldown.ticks 1
execute as @s[scores={dvz.chicken_nugget.fly.cooldown.ticks=20..}] run scoreboard players remove @s dvz.chicken_nugget.fly.cooldown.seconds 1
execute as @s[scores={dvz.chicken_nugget.fly.cooldown.ticks=20..,dvz.chicken_nugget.fly.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 10 2
execute as @s[scores={dvz.chicken_nugget.fly.cooldown.ticks=20..}] run scoreboard players set @s dvz.chicken_nugget.fly.cooldown.ticks 0

# Snowman - Snowball Barrage
execute as @s[scores={dvz.snowman.snowball_barrage.cooldown.seconds=1..}] run scoreboard players add @s dvz.snowman.snowball_barrage.cooldown.ticks 1
execute as @s[scores={dvz.snowman.snowball_barrage.cooldown.ticks=20..}] run scoreboard players remove @s dvz.snowman.snowball_barrage.cooldown.seconds 1
execute as @s[scores={dvz.snowman.snowball_barrage.cooldown.ticks=20..,dvz.snowman.snowball_barrage.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 10 2
execute as @s[scores={dvz.snowman.snowball_barrage.cooldown.ticks=20..}] run scoreboard players set @s dvz.snowman.snowball_barrage.cooldown.ticks 0

# Snowman - Icicle
execute as @s[scores={dvz.snowman.icicle.cooldown.seconds=1..}] run scoreboard players add @s dvz.snowman.icicle.cooldown.ticks 1
execute as @s[scores={dvz.snowman.icicle.cooldown.ticks=20..}] run scoreboard players remove @s dvz.snowman.icicle.cooldown.seconds 1
execute as @s[scores={dvz.snowman.icicle.cooldown.ticks=20..,dvz.snowman.icicle.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 10 2
execute as @s[scores={dvz.snowman.icicle.cooldown.ticks=20..}] run scoreboard players set @s dvz.snowman.icicle.cooldown.ticks 0

# Chillager - Ice Cube
execute as @s[scores={dvz.chillager.ice_cube.cooldown.seconds=1..}] run scoreboard players add @s dvz.chillager.ice_cube.cooldown.ticks 1
execute as @s[scores={dvz.chillager.ice_cube.cooldown.ticks=20..}] run scoreboard players remove @s dvz.chillager.ice_cube.cooldown.seconds 1
execute as @s[scores={dvz.chillager.ice_cube.cooldown.ticks=20..,dvz.chillager.ice_cube.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 10 2
execute as @s[scores={dvz.chillager.ice_cube.cooldown.ticks=20..}] run scoreboard players set @s dvz.chillager.ice_cube.cooldown.ticks 0

# Bee - Honey
execute as @s[scores={dvz.bee.honey.cooldown.seconds=1..}] run scoreboard players add @s dvz.bee.honey.cooldown.ticks 1
execute as @s[scores={dvz.bee.honey.cooldown.ticks=20..}] run scoreboard players remove @s dvz.bee.honey.cooldown.seconds 1
execute as @s[scores={dvz.bee.honey.cooldown.ticks=20..,dvz.bee.honey.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 10 2
execute as @s[scores={dvz.bee.honey.cooldown.ticks=20..}] run scoreboard players set @s dvz.bee.honey.cooldown.ticks 0

# Bee - Pollen Bomb
execute as @s[scores={dvz.bee.pollen_bomb.cooldown.seconds=1..}] run scoreboard players add @s dvz.bee.pollen_bomb.cooldown.ticks 1
execute as @s[scores={dvz.bee.pollen_bomb.cooldown.ticks=20..}] run scoreboard players remove @s dvz.bee.pollen_bomb.cooldown.seconds 1
execute as @s[scores={dvz.bee.pollen_bomb.cooldown.ticks=20..,dvz.bee.pollen_bomb.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 10 2
execute as @s[scores={dvz.bee.pollen_bomb.cooldown.ticks=20..}] run scoreboard players set @s dvz.bee.pollen_bomb.cooldown.ticks 0

# Phantom - Delirium
execute as @s[scores={dvz.phantom.delirium.cooldown.seconds=1..}] run scoreboard players add @s dvz.phantom.delirium.cooldown.ticks 1
execute as @s[scores={dvz.phantom.delirium.cooldown.ticks=20..}] run scoreboard players remove @s dvz.phantom.delirium.cooldown.seconds 1
execute as @s[scores={dvz.phantom.delirium.cooldown.ticks=20..,dvz.phantom.delirium.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 10 2
execute as @s[scores={dvz.phantom.delirium.cooldown.ticks=20..}] run scoreboard players set @s dvz.phantom.delirium.cooldown.ticks 0

# Blaze - Fireball
execute as @s[scores={dvz.blaze.fireball.cooldown.seconds=1..}] run scoreboard players add @s dvz.blaze.fireball.cooldown.ticks 1
execute as @s[scores={dvz.blaze.fireball.cooldown.ticks=20..}] run scoreboard players remove @s dvz.blaze.fireball.cooldown.seconds 1
execute as @s[scores={dvz.blaze.fireball.cooldown.ticks=20..,dvz.blaze.fireball.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 10 2
execute as @s[scores={dvz.blaze.fireball.cooldown.ticks=20..}] run scoreboard players set @s dvz.blaze.fireball.cooldown.ticks 0

# Blaze - Fireblast
execute as @s[scores={dvz.blaze.fireblast.cooldown.seconds=1..}] run scoreboard players add @s dvz.blaze.fireblast.cooldown.ticks 1
execute as @s[scores={dvz.blaze.fireblast.cooldown.ticks=20..}] run scoreboard players remove @s dvz.blaze.fireblast.cooldown.seconds 1
execute as @s[scores={dvz.blaze.fireblast.cooldown.ticks=20..,dvz.blaze.fireblast.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 10 2
execute as @s[scores={dvz.blaze.fireblast.cooldown.ticks=20..}] run scoreboard players set @s dvz.blaze.fireblast.cooldown.ticks 0

# Blaze - Firefly
execute as @s[scores={dvz.firefly.cool=1..}] run scoreboard players add @s dvz.firefly.tick 1
execute as @s[scores={dvz.firefly.tick=20..}] run scoreboard players remove @s dvz.firefly.cool 1
execute as @s[scores={dvz.firefly.tick=20..,dvz.firefly.cool=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 10 2
execute as @s[scores={dvz.firefly.tick=20..}] run scoreboard players set @s dvz.firefly.tick 0

# Silverfish - Roar
execute as @s[scores={dvz.silverfish.roar.cooldown.seconds=1..}] run scoreboard players add @s dvz.silverfish.roar.cooldown.ticks 1
execute as @s[scores={dvz.silverfish.roar.cooldown.ticks=20..}] run scoreboard players remove @s dvz.silverfish.roar.cooldown.seconds 1
execute as @s[scores={dvz.silverfish.roar.cooldown.ticks=20..,dvz.silverfish.roar.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 10 2
execute as @s[scores={dvz.silverfish.roar.cooldown.ticks=20..}] run scoreboard players set @s dvz.silverfish.roar.cooldown.ticks 0

# Golem - Fissure
execute as @s[scores={dvz.golem.fissure.cooldown.seconds=1..}] run scoreboard players add @s dvz.golem.fissure.cooldown.ticks 1
execute as @s[scores={dvz.golem.fissure.cooldown.ticks=20..}] run scoreboard players remove @s dvz.golem.fissure.cooldown.seconds 1
execute as @s[scores={dvz.golem.fissure.cooldown.ticks=20..,dvz.golem.fissure.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 10 2
execute as @s[scores={dvz.golem.fissure.cooldown.ticks=20..}] run scoreboard players set @s dvz.golem.fissure.cooldown.ticks 0

# Enderman - Teleport
execute as @s[scores={dvz.enderman.teleport.cooldown.seconds=1..}] run scoreboard players add @s dvz.enderman.teleport.cooldown.ticks 1
execute as @s[scores={dvz.enderman.teleport.cooldown.ticks=20..}] run scoreboard players remove @s dvz.enderman.teleport.cooldown.seconds 1
execute as @s[scores={dvz.enderman.teleport.cooldown.ticks=20..,dvz.enderman.teleport.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 10 2
execute as @s[scores={dvz.enderman.teleport.cooldown.ticks=20..}] run scoreboard players set @s dvz.enderman.teleport.cooldown.ticks 0

# Enderman - Portal
execute as @s[scores={dvz.enderman.portal.cooldown.seconds=1..}] run scoreboard players add @s dvz.enderman.portal.cooldown.ticks 1
execute as @s[scores={dvz.enderman.portal.cooldown.ticks=20..}] run scoreboard players remove @s dvz.enderman.portal.cooldown.seconds 1
execute as @s[scores={dvz.enderman.portal.cooldown.ticks=20..,dvz.enderman.portal.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 10 2
execute as @s[scores={dvz.enderman.portal.cooldown.ticks=20..}] run scoreboard players set @s dvz.enderman.portal.cooldown.ticks 0

# Enderman - Portal Teleport
execute as @s[scores={dvz.enderman.reinforce.cooldown.seconds=1..}] run scoreboard players add @s dvz.enderman.reinforce.cooldown.ticks 1
execute as @s[scores={dvz.enderman.reinforce.cooldown.ticks=20..}] run scoreboard players remove @s dvz.enderman.reinforce.cooldown.seconds 1
execute as @s[scores={dvz.enderman.reinforce.cooldown.ticks=20..,dvz.enderman.reinforce.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 10 2
execute as @s[scores={dvz.enderman.reinforce.cooldown.ticks=20..}] run scoreboard players set @s dvz.enderman.reinforce.cooldown.ticks 0