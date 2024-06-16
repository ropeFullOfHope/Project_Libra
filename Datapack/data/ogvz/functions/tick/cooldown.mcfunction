# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: ogvz:tick
# File Name: cooldown
# Function Name: ogvz:tick/cooldown
# File Purpose: Resets scoreboard objectives related to all active items. Also plays a jingle and diplays a message when a player finishes their cooldown.
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
execute as @s[scores={ogvz.rclick.cooldown=1..}] run scoreboard players remove @s ogvz.rclick.cooldown 1

# Builder - Summoning Book
execute as @s[scores={ogvz.builder.summoning_book.cooldown.seconds=1..}] run scoreboard players add @s ogvz.builder.summoning_book.cooldown.ticks 1
execute as @s[scores={ogvz.builder.summoning_book.cooldown.ticks=20..}] run scoreboard players remove @s ogvz.builder.summoning_book.cooldown.seconds 1
execute as @s[scores={ogvz.builder.summoning_book.cooldown.ticks=20..,ogvz.builder.summoning_book.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={ogvz.builder.summoning_book.cooldown.ticks=20..,ogvz.builder.summoning_book.cooldown.seconds=0}] run title @s actionbar ["",{"text":"[Summoning Book]","bold":true,"color":"blue"},{"text":" Recharged!","color":"blue"}]
execute as @s[scores={ogvz.builder.summoning_book.cooldown.ticks=20..}] run scoreboard players set @s ogvz.builder.summoning_book.cooldown.ticks 0

# Alchemist - Water Wand
execute as @s[scores={ogvz.alchemist.water_wand.cooldown.seconds=1..}] run scoreboard players add @s ogvz.alchemist.water_wand.cooldown.ticks 1
execute as @s[scores={ogvz.alchemist.water_wand.cooldown.ticks=20..}] run scoreboard players remove @s ogvz.alchemist.water_wand.cooldown.seconds 1
execute as @s[scores={ogvz.alchemist.water_wand.cooldown.ticks=20..,ogvz.alchemist.water_wand.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={ogvz.alchemist.water_wand.cooldown.ticks=20..,ogvz.alchemist.water_wand.cooldown.seconds=0}] run title @s actionbar ["",{"text":"[Water Wand]","bold":true,"color":"blue"},{"text":" Recharged!","color":"blue"}]
execute as @s[scores={ogvz.alchemist.water_wand.cooldown.ticks=20..}] run scoreboard players set @s ogvz.alchemist.water_wand.cooldown.ticks 0

# Dwarves - Magic Health Potion
execute as @s[scores={ogvz.dwarf.magic_health_potion.cooldown.seconds=1..}] run scoreboard players add @s ogvz.dwarf.magic_health_potion.cooldown.ticks 1
execute as @s[scores={ogvz.dwarf.magic_health_potion.cooldown.ticks=20..}] run scoreboard players remove @s ogvz.dwarf.magic_health_potion.cooldown.seconds 1
execute as @s[scores={ogvz.dwarf.magic_health_potion.cooldown.ticks=20..,ogvz.dwarf.magic_health_potion.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={ogvz.dwarf.magic_health_potion.cooldown.ticks=20..,ogvz.dwarf.magic_health_potion.cooldown.seconds=0}] run playsound minecraft:block.brewing_stand.brew player @s ~ ~ ~ 1 1.3 1
execute as @s[scores={ogvz.dwarf.magic_health_potion.cooldown.ticks=20..,ogvz.dwarf.magic_health_potion.cooldown.seconds=0}] run title @s actionbar ["",{"text":"[Magic Health Potion]","bold":true,"color":"blue"},{"text":" Recharged!","color":"blue"}]
execute as @s[scores={ogvz.dwarf.magic_health_potion.cooldown.ticks=20..}] run scoreboard players set @s ogvz.dwarf.magic_health_potion.cooldown.ticks 0

# Dwarves - Pearl Rod
execute as @s[scores={ogvz.dwarf.pearl_rod.cooldown.seconds=1..}] run scoreboard players add @s ogvz.dwarf.pearl_rod.cooldown.ticks 1
execute as @s[scores={ogvz.dwarf.pearl_rod.cooldown.ticks=20..}] run scoreboard players remove @s ogvz.dwarf.pearl_rod.cooldown.seconds 1
execute as @s[scores={ogvz.dwarf.pearl_rod.cooldown.ticks=20..,ogvz.dwarf.pearl_rod.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={ogvz.dwarf.pearl_rod.cooldown.ticks=20..,ogvz.dwarf.pearl_rod.cooldown.seconds=0}] run playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 0.5 1
execute as @s[scores={ogvz.dwarf.pearl_rod.cooldown.ticks=20..,ogvz.dwarf.pearl_rod.cooldown.seconds=0}] run title @s actionbar ["",{"text":"[Pearl Rod]","bold":true,"color":"blue"},{"text":" Recharged!","color":"blue"}]
execute as @s[scores={ogvz.dwarf.pearl_rod.cooldown.ticks=20..}] run scoreboard players set @s ogvz.dwarf.pearl_rod.cooldown.ticks 0

# Dwarven Guard - Elder Guardian Eye
execute as @s[scores={ogvz.dwarven_guard.elder_guardian_eye.cooldown.seconds=1..}] run scoreboard players add @s ogvz.dwarven_guard.elder_guardian_eye.cooldown.ticks 1
execute as @s[scores={ogvz.dwarven_guard.elder_guardian_eye.cooldown.ticks=20..}] run scoreboard players remove @s ogvz.dwarven_guard.elder_guardian_eye.cooldown.seconds 1
execute as @s[scores={ogvz.dwarven_guard.elder_guardian_eye.cooldown.ticks=20..,ogvz.dwarven_guard.elder_guardian_eye.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={ogvz.dwarven_guard.elder_guardian_eye.cooldown.ticks=20..,ogvz.dwarven_guard.elder_guardian_eye.cooldown.seconds=0}] run title @s actionbar ["",{"text":"[Elder Guardian Eye]","bold":true,"color":"blue"},{"text":" Recharged!","color":"blue"}]
execute as @s[scores={ogvz.dwarven_guard.elder_guardian_eye.cooldown.ticks=20..}] run scoreboard players set @s ogvz.dwarven_guard.elder_guardian_eye.cooldown.ticks 0

# Guardian - Beam
execute as @s[scores={ogvz.guardian.beam.cooldown.seconds=1..}] run scoreboard players add @s ogvz.guardian.beam.cooldown.ticks 1
execute as @s[scores={ogvz.guardian.beam.cooldown.ticks=20..}] run scoreboard players remove @s ogvz.guardian.beam.cooldown.seconds 1
execute as @s[scores={ogvz.guardian.beam.cooldown.ticks=20..,ogvz.guardian.beam.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={ogvz.guardian.beam.cooldown.ticks=20..}] run scoreboard players set @s ogvz.guardian.beam.cooldown.ticks 0

# Spider - Web
execute as @s[scores={ogvz.spider.web.cooldown.seconds=1..}] run scoreboard players add @s ogvz.spider.web.cooldown.ticks 1
execute as @s[scores={ogvz.spider.web.cooldown.ticks=20..}] run scoreboard players remove @s ogvz.spider.web.cooldown.seconds 1
execute as @s[scores={ogvz.spider.web.cooldown.ticks=20..,ogvz.spider.web.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={ogvz.spider.web.cooldown.ticks=20..}] run scoreboard players set @s ogvz.spider.web.cooldown.ticks 0

# Ocelot - Steal Mana
execute as @s[scores={ogvz.ocelot.steal_mana.cooldown.seconds=1..}] run scoreboard players add @s ogvz.ocelot.steal_mana.cooldown.ticks 1
execute as @s[scores={ogvz.ocelot.steal_mana.cooldown.ticks=20..}] run scoreboard players remove @s ogvz.ocelot.steal_mana.cooldown.seconds 1
execute as @s[scores={ogvz.ocelot.steal_mana.cooldown.ticks=20..,ogvz.ocelot.steal_mana.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={ogvz.ocelot.steal_mana.cooldown.ticks=20..}] run scoreboard players set @s ogvz.ocelot.steal_mana.cooldown.ticks 0

# Chicken Nugget - Fly
execute as @s[scores={ogvz.chicken_nugget.fly.cooldown.seconds=1..}] run scoreboard players add @s ogvz.chicken_nugget.fly.cooldown.ticks 1
execute as @s[scores={ogvz.chicken_nugget.fly.cooldown.ticks=20..}] run scoreboard players remove @s ogvz.chicken_nugget.fly.cooldown.seconds 1
execute as @s[scores={ogvz.chicken_nugget.fly.cooldown.ticks=20..,ogvz.chicken_nugget.fly.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={ogvz.chicken_nugget.fly.cooldown.ticks=20..}] run scoreboard players set @s ogvz.chicken_nugget.fly.cooldown.ticks 0

# Snowman - Snowball Barrage
execute as @s[scores={ogvz.snowman.snowball_barrage.cooldown.seconds=1..}] run scoreboard players add @s ogvz.snowman.snowball_barrage.cooldown.ticks 1
execute as @s[scores={ogvz.snowman.snowball_barrage.cooldown.ticks=20..}] run scoreboard players remove @s ogvz.snowman.snowball_barrage.cooldown.seconds 1
execute as @s[scores={ogvz.snowman.snowball_barrage.cooldown.ticks=20..,ogvz.snowman.snowball_barrage.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={ogvz.snowman.snowball_barrage.cooldown.ticks=20..}] run scoreboard players set @s ogvz.snowman.snowball_barrage.cooldown.ticks 0

# Snowman - Icicle
execute as @s[scores={ogvz.snowman.icicle.cooldown.seconds=1..}] run scoreboard players add @s ogvz.snowman.icicle.cooldown.ticks 1
execute as @s[scores={ogvz.snowman.icicle.cooldown.ticks=20..}] run scoreboard players remove @s ogvz.snowman.icicle.cooldown.seconds 1
execute as @s[scores={ogvz.snowman.icicle.cooldown.ticks=20..,ogvz.snowman.icicle.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={ogvz.snowman.icicle.cooldown.ticks=20..}] run scoreboard players set @s ogvz.snowman.icicle.cooldown.ticks 0

# Chillager - Ice Cube
execute as @s[scores={ogvz.chillager.ice_cube.cooldown.seconds=1..}] run scoreboard players add @s ogvz.chillager.ice_cube.cooldown.ticks 1
execute as @s[scores={ogvz.chillager.ice_cube.cooldown.ticks=20..}] run scoreboard players remove @s ogvz.chillager.ice_cube.cooldown.seconds 1
execute as @s[scores={ogvz.chillager.ice_cube.cooldown.ticks=20..,ogvz.chillager.ice_cube.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={ogvz.chillager.ice_cube.cooldown.ticks=20..}] run scoreboard players set @s ogvz.chillager.ice_cube.cooldown.ticks 0

# Bee - Honey
execute as @s[scores={ogvz.bee.honey.cooldown.seconds=1..}] run scoreboard players add @s ogvz.bee.honey.cooldown.ticks 1
execute as @s[scores={ogvz.bee.honey.cooldown.ticks=20..}] run scoreboard players remove @s ogvz.bee.honey.cooldown.seconds 1
execute as @s[scores={ogvz.bee.honey.cooldown.ticks=20..,ogvz.bee.honey.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={ogvz.bee.honey.cooldown.ticks=20..}] run scoreboard players set @s ogvz.bee.honey.cooldown.ticks 0

# Bee - Pollen Bomb
execute as @s[scores={ogvz.bee.pollen_bomb.cooldown.seconds=1..}] run scoreboard players add @s ogvz.bee.pollen_bomb.cooldown.ticks 1
execute as @s[scores={ogvz.bee.pollen_bomb.cooldown.ticks=20..}] run scoreboard players remove @s ogvz.bee.pollen_bomb.cooldown.seconds 1
execute as @s[scores={ogvz.bee.pollen_bomb.cooldown.ticks=20..,ogvz.bee.pollen_bomb.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={ogvz.bee.pollen_bomb.cooldown.ticks=20..}] run scoreboard players set @s ogvz.bee.pollen_bomb.cooldown.ticks 0

# Phantom - Delirium
execute as @s[scores={ogvz.phantom.delirium.cooldown.seconds=1..}] run scoreboard players add @s ogvz.phantom.delirium.cooldown.ticks 1
execute as @s[scores={ogvz.phantom.delirium.cooldown.ticks=20..}] run scoreboard players remove @s ogvz.phantom.delirium.cooldown.seconds 1
execute as @s[scores={ogvz.phantom.delirium.cooldown.ticks=20..,ogvz.phantom.delirium.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={ogvz.phantom.delirium.cooldown.ticks=20..}] run scoreboard players set @s ogvz.phantom.delirium.cooldown.ticks 0

# Blaze - Fireball
execute as @s[scores={ogvz.blaze.fireball.cooldown.seconds=1..}] run scoreboard players add @s ogvz.blaze.fireball.cooldown.ticks 1
execute as @s[scores={ogvz.blaze.fireball.cooldown.ticks=20..}] run scoreboard players remove @s ogvz.blaze.fireball.cooldown.seconds 1
execute as @s[scores={ogvz.blaze.fireball.cooldown.ticks=20..,ogvz.blaze.fireball.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={ogvz.blaze.fireball.cooldown.ticks=20..}] run scoreboard players set @s ogvz.blaze.fireball.cooldown.ticks 0

# Blaze - Fireblast
execute as @s[scores={ogvz.blaze.fireblast.cooldown.seconds=1..}] run scoreboard players add @s ogvz.blaze.fireblast.cooldown.ticks 1
execute as @s[scores={ogvz.blaze.fireblast.cooldown.ticks=20..}] run scoreboard players remove @s ogvz.blaze.fireblast.cooldown.seconds 1
execute as @s[scores={ogvz.blaze.fireblast.cooldown.ticks=20..,ogvz.blaze.fireblast.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={ogvz.blaze.fireblast.cooldown.ticks=20..}] run scoreboard players set @s ogvz.blaze.fireblast.cooldown.ticks 0

# Blaze - Firefly
execute as @s[scores={ogvz.blaze.firefly.cooldown.seconds=1..}] run scoreboard players add @s ogvz.blaze.firefly.cooldown.ticks 1
execute as @s[scores={ogvz.blaze.firefly.cooldown.ticks=20..}] run scoreboard players remove @s ogvz.blaze.firefly.cooldown.seconds 1
execute as @s[scores={ogvz.blaze.firefly.cooldown.ticks=20..,ogvz.blaze.firefly.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={ogvz.blaze.firefly.cooldown.ticks=20..}] run scoreboard players set @s ogvz.blaze.firefly.cooldown.ticks 0

# Silverfish - Roar
execute as @s[scores={ogvz.silverfish.roar.cooldown.seconds=1..}] run scoreboard players add @s ogvz.silverfish.roar.cooldown.ticks 1
execute as @s[scores={ogvz.silverfish.roar.cooldown.ticks=20..}] run scoreboard players remove @s ogvz.silverfish.roar.cooldown.seconds 1
execute as @s[scores={ogvz.silverfish.roar.cooldown.ticks=20..,ogvz.silverfish.roar.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={ogvz.silverfish.roar.cooldown.ticks=20..}] run scoreboard players set @s ogvz.silverfish.roar.cooldown.ticks 0

# Golem - Fissure
execute as @s[scores={ogvz.golem.fissure.cooldown.seconds=1..}] run scoreboard players add @s ogvz.golem.fissure.cooldown.ticks 1
execute as @s[scores={ogvz.golem.fissure.cooldown.ticks=20..}] run scoreboard players remove @s ogvz.golem.fissure.cooldown.seconds 1
execute as @s[scores={ogvz.golem.fissure.cooldown.ticks=20..,ogvz.golem.fissure.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={ogvz.golem.fissure.cooldown.ticks=20..}] run scoreboard players set @s ogvz.golem.fissure.cooldown.ticks 0

# Enderman - Teleport
execute as @s[scores={ogvz.enderman.teleport.cooldown.seconds=1..}] run scoreboard players add @s ogvz.enderman.teleport.cooldown.ticks 1
execute as @s[scores={ogvz.enderman.teleport.cooldown.ticks=20..}] run scoreboard players remove @s ogvz.enderman.teleport.cooldown.seconds 1
execute as @s[scores={ogvz.enderman.teleport.cooldown.ticks=20..,ogvz.enderman.teleport.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={ogvz.enderman.teleport.cooldown.ticks=20..}] run scoreboard players set @s ogvz.enderman.teleport.cooldown.ticks 0

# Enderman - Portal
execute as @s[scores={ogvz.enderman.portal.cooldown.seconds=1..}] run scoreboard players add @s ogvz.enderman.portal.cooldown.ticks 1
execute as @s[scores={ogvz.enderman.portal.cooldown.ticks=20..}] run scoreboard players remove @s ogvz.enderman.portal.cooldown.seconds 1
execute as @s[scores={ogvz.enderman.portal.cooldown.ticks=20..,ogvz.enderman.portal.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={ogvz.enderman.portal.cooldown.ticks=20..}] run scoreboard players set @s ogvz.enderman.portal.cooldown.ticks 0

# Enderman - Portal Teleport
execute as @s[scores={ogvz.enderman.reinforce.cooldown.seconds=1..}] run scoreboard players add @s ogvz.enderman.reinforce.cooldown.ticks 1
execute as @s[scores={ogvz.enderman.reinforce.cooldown.ticks=20..}] run scoreboard players remove @s ogvz.enderman.reinforce.cooldown.seconds 1
execute as @s[scores={ogvz.enderman.reinforce.cooldown.ticks=20..,ogvz.enderman.reinforce.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={ogvz.enderman.reinforce.cooldown.ticks=20..}] run scoreboard players set @s ogvz.enderman.reinforce.cooldown.ticks 0