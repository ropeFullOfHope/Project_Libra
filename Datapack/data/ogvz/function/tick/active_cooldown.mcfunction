# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: ogvz:tick
# File Name: active_cooldown
# Function Name: ogvz:tick/active_cooldown
# File Purpose: Controls scoreboard objectives related to all active items. Also plays a jingle and diplays a message when a player finishes their cooldown.
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2023.07.09
# Last Modified By: ropeFullOfHope
#
# Credit to:
#
# Comments: Uses a dual system to track ticks and seconds. Necessary because seconds are displayed in prompt messages, whereas ticks are the base minecraft time interval.
#           Also handles warmups.
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

# Right click
execute as @s[scores={ogvz.rclick.cooldown=1..}] run scoreboard players remove @s ogvz.rclick.cooldown 1

# All - Custom Bar (hide)
execute as @s[scores={ogvz.misc.custom_bar_hide.seconds=1..}] run scoreboard players add @s ogvz.misc.custom_bar_hide.ticks 1
execute as @s[scores={ogvz.misc.custom_bar_hide.ticks=20..}] run scoreboard players remove @s ogvz.misc.custom_bar_hide.seconds 1
execute as @s[scores={ogvz.misc.custom_bar_hide.ticks=20..}] run scoreboard players set @s ogvz.misc.custom_bar_hide.ticks 0

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

# Dwarves - Pearl Rod (cooldown)
execute as @s[scores={ogvz.dwarf.pearl_rod.cooldown.seconds=1..}] run scoreboard players add @s ogvz.dwarf.pearl_rod.cooldown.ticks 1
execute as @s[scores={ogvz.dwarf.pearl_rod.cooldown.ticks=20..}] run scoreboard players remove @s ogvz.dwarf.pearl_rod.cooldown.seconds 1
execute as @s[scores={ogvz.dwarf.pearl_rod.cooldown.ticks=20..,ogvz.dwarf.pearl_rod.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={ogvz.dwarf.pearl_rod.cooldown.ticks=20..,ogvz.dwarf.pearl_rod.cooldown.seconds=0}] run playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 0.5 1
execute as @s[scores={ogvz.dwarf.pearl_rod.cooldown.ticks=20..,ogvz.dwarf.pearl_rod.cooldown.seconds=0}] run title @s actionbar ["",{"text":"[Pearl Rod]","bold":true,"color":"blue"},{"text":" Recharged!","color":"blue"}]
execute as @s[scores={ogvz.dwarf.pearl_rod.cooldown.ticks=20..}] run scoreboard players set @s ogvz.dwarf.pearl_rod.cooldown.ticks 0

# Dwarves - Pearl Rod (warmup)
execute as @s[scores={ogvz.dwarf.pearl_rod.warmup.seconds=1..}] run scoreboard players add @s ogvz.dwarf.pearl_rod.warmup.ticks 1
execute as @s[scores={ogvz.dwarf.pearl_rod.warmup.ticks=20..}] run scoreboard players remove @s ogvz.dwarf.pearl_rod.warmup.seconds 1
execute as @s[scores={ogvz.dwarf.pearl_rod.warmup.ticks=20..}] run scoreboard players set @s ogvz.dwarf.pearl_rod.warmup.ticks 0

# Dwarves - Ocean's Pearl (buff)
execute as @s[scores={ogvz.dwarf.oceans_pearl_buff.cooldown.seconds=1..}] run scoreboard players add @s ogvz.dwarf.oceans_pearl_buff.cooldown.ticks 1
execute as @s[scores={ogvz.dwarf.oceans_pearl_buff.cooldown.ticks=20..}] run scoreboard players remove @s ogvz.dwarf.oceans_pearl_buff.cooldown.seconds 1
execute as @s[scores={ogvz.dwarf.oceans_pearl_buff.cooldown.ticks=20..}] run scoreboard players set @s ogvz.dwarf.oceans_pearl_buff.cooldown.ticks 0

# Dragon Warrior - Dwarven Ruby
execute as @s[scores={ogvz.dragon_warrior.dragon_scale.cooldown.seconds=1..}] run scoreboard players add @s ogvz.dragon_warrior.dragon_scale.cooldown.ticks 1
execute as @s[scores={ogvz.dragon_warrior.dragon_scale.cooldown.ticks=20..}] run scoreboard players remove @s ogvz.dragon_warrior.dragon_scale.cooldown.seconds 1
execute as @s[scores={ogvz.dragon_warrior.dragon_scale.cooldown.ticks=20..,ogvz.dragon_warrior.dragon_scale.cooldown.seconds=0}] run playsound minecraft:entity.ender_dragon.growl player @s ~ ~ ~ 1 1 1
execute as @s[scores={ogvz.dragon_warrior.dragon_scale.cooldown.ticks=20..,ogvz.dragon_warrior.dragon_scale.cooldown.seconds=0}] run title @s actionbar ["",{"text":"[Dragon Scale]","bold":true,"color":"blue"},{"text":" Recharged!","color":"blue"}]
execute as @s[scores={ogvz.dragon_warrior.dragon_scale.cooldown.ticks=20..}] run scoreboard players set @s ogvz.dragon_warrior.dragon_scale.cooldown.ticks 0

# Dragon Warrior - Dwarven Ruby
execute as @s[scores={ogvz.dragon_warrior.dwarven_ruby.cooldown.seconds=1..}] run scoreboard players add @s ogvz.dragon_warrior.dwarven_ruby.cooldown.ticks 1
execute as @s[scores={ogvz.dragon_warrior.dwarven_ruby.cooldown.ticks=20..}] run scoreboard players remove @s ogvz.dragon_warrior.dwarven_ruby.cooldown.seconds 1
execute as @s[scores={ogvz.dragon_warrior.dwarven_ruby.cooldown.ticks=20..,ogvz.dragon_warrior.dwarven_ruby.cooldown.seconds=0}] run playsound minecraft:block.beacon.power_select player @s ~ ~ ~ 1 2 1
execute as @s[scores={ogvz.dragon_warrior.dwarven_ruby.cooldown.ticks=20..,ogvz.dragon_warrior.dwarven_ruby.cooldown.seconds=0}] run title @s actionbar ["",{"text":"[Dwarven Ruby]","bold":true,"color":"blue"},{"text":" Recharged!","color":"blue"}]
execute as @s[scores={ogvz.dragon_warrior.dwarven_ruby.cooldown.ticks=20..}] run scoreboard players set @s ogvz.dragon_warrior.dwarven_ruby.cooldown.ticks 0

# Wither Warrior - Phantom Slash
execute as @s[scores={ogvz.wither_warrior.phantom_slash.cooldown.seconds=1..}] run scoreboard players add @s ogvz.wither_warrior.phantom_slash.cooldown.ticks 1
execute as @s[scores={ogvz.wither_warrior.phantom_slash.cooldown.ticks=20..}] run scoreboard players remove @s ogvz.wither_warrior.phantom_slash.cooldown.seconds 1
execute as @s[scores={ogvz.wither_warrior.phantom_slash.cooldown.ticks=20..,ogvz.wither_warrior.phantom_slash.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={ogvz.wither_warrior.phantom_slash.cooldown.ticks=20..,ogvz.wither_warrior.phantom_slash.cooldown.seconds=0}] run title @s actionbar ["",{"text":"[Phantom Slash]","bold":true,"color":"blue"},{"text":" Recharged!","color":"blue"}]
execute as @s[scores={ogvz.wither_warrior.phantom_slash.cooldown.ticks=20..}] run scoreboard players set @s ogvz.wither_warrior.phantom_slash.cooldown.ticks 0

# Assassin Slayer - Assassinate
execute as @s[scores={ogvz.assassin_slayer.assassinate.cooldown.seconds=1..}] run scoreboard players add @s ogvz.assassin_slayer.assassinate.cooldown.ticks 1
execute as @s[scores={ogvz.assassin_slayer.assassinate.cooldown.ticks=20..}] run scoreboard players remove @s ogvz.assassin_slayer.assassinate.cooldown.seconds 1
execute as @s[scores={ogvz.assassin_slayer.assassinate.cooldown.ticks=20..,ogvz.assassin_slayer.assassinate.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={ogvz.assassin_slayer.assassinate.cooldown.ticks=20..,ogvz.assassin_slayer.assassinate.cooldown.seconds=0}] run title @s actionbar ["",{"text":"[Assassinate]","bold":true,"color":"blue"},{"text":" Recharged!","color":"blue"}]
execute as @s[scores={ogvz.assassin_slayer.assassinate.cooldown.ticks=20..}] run scoreboard players set @s ogvz.assassin_slayer.assassinate.cooldown.ticks 0

# Assassin Slayer - Cloak of Shadows
execute as @s[scores={ogvz.assassin_slayer.cloak_of_shadows.cooldown.seconds=1..}] run scoreboard players add @s ogvz.assassin_slayer.cloak_of_shadows.cooldown.ticks 1
execute as @s[scores={ogvz.assassin_slayer.cloak_of_shadows.cooldown.ticks=20..}] run scoreboard players remove @s ogvz.assassin_slayer.cloak_of_shadows.cooldown.seconds 1
execute as @s[scores={ogvz.assassin_slayer.cloak_of_shadows.cooldown.ticks=20..,ogvz.assassin_slayer.cloak_of_shadows.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={ogvz.assassin_slayer.cloak_of_shadows.cooldown.ticks=20..,ogvz.assassin_slayer.cloak_of_shadows.cooldown.seconds=0}] run title @s actionbar ["",{"text":"[Cloak of Shadows]","bold":true,"color":"blue"},{"text":" Recharged!","color":"blue"}]
execute as @s[scores={ogvz.assassin_slayer.cloak_of_shadows.cooldown.ticks=20..}] run scoreboard players set @s ogvz.assassin_slayer.cloak_of_shadows.cooldown.ticks 0

# Assassin Slayer - Mana Star
execute as @s[scores={ogvz.assassin_slayer.mana_star.cooldown.seconds=1..}] run scoreboard players add @s ogvz.assassin_slayer.mana_star.cooldown.ticks 1
execute as @s[scores={ogvz.assassin_slayer.mana_star.cooldown.ticks=20..}] run scoreboard players remove @s ogvz.assassin_slayer.mana_star.cooldown.seconds 1
execute as @s[scores={ogvz.assassin_slayer.mana_star.cooldown.ticks=20..,ogvz.assassin_slayer.mana_star.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={ogvz.assassin_slayer.mana_star.cooldown.ticks=20..,ogvz.assassin_slayer.mana_star.cooldown.seconds=0}] run title @s actionbar ["",{"text":"[Mana Star]","bold":true,"color":"blue"},{"text":" Recharged!","color":"blue"}]
execute as @s[scores={ogvz.assassin_slayer.mana_star.cooldown.ticks=20..}] run scoreboard players set @s ogvz.assassin_slayer.mana_star.cooldown.ticks 0

# Dwarven Guard - Elder Guardian Eye
execute as @s[scores={ogvz.dwarven_guard.elder_guardian_eye.cooldown.seconds=1..}] run scoreboard players add @s ogvz.dwarven_guard.elder_guardian_eye.cooldown.ticks 1
execute as @s[scores={ogvz.dwarven_guard.elder_guardian_eye.cooldown.ticks=20..}] run scoreboard players remove @s ogvz.dwarven_guard.elder_guardian_eye.cooldown.seconds 1
execute as @s[scores={ogvz.dwarven_guard.elder_guardian_eye.cooldown.ticks=20..,ogvz.dwarven_guard.elder_guardian_eye.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={ogvz.dwarven_guard.elder_guardian_eye.cooldown.ticks=20..,ogvz.dwarven_guard.elder_guardian_eye.cooldown.seconds=0}] run title @s actionbar ["",{"text":"[Elder Guardian Eye]","bold":true,"color":"blue"},{"text":" Recharged!","color":"blue"}]
execute as @s[scores={ogvz.dwarven_guard.elder_guardian_eye.cooldown.ticks=20..}] run scoreboard players set @s ogvz.dwarven_guard.elder_guardian_eye.cooldown.ticks 0

# Dwarven Guard - Ocean's Pearl
execute as @s[scores={ogvz.dwarven_guard.oceans_pearl.cooldown.seconds=1..}] run scoreboard players add @s ogvz.dwarven_guard.oceans_pearl.cooldown.ticks 1
execute as @s[scores={ogvz.dwarven_guard.oceans_pearl.cooldown.ticks=20..}] run scoreboard players remove @s ogvz.dwarven_guard.oceans_pearl.cooldown.seconds 1
execute as @s[scores={ogvz.dwarven_guard.oceans_pearl.cooldown.ticks=20..,ogvz.dwarven_guard.oceans_pearl.cooldown.seconds=0}] run playsound minecraft:block.conduit.attack.target player @s ~ ~ ~ 1 1 1
execute as @s[scores={ogvz.dwarven_guard.oceans_pearl.cooldown.ticks=20..,ogvz.dwarven_guard.oceans_pearl.cooldown.seconds=0}] run title @s actionbar ["",{"text":"[Ocean's Pearl]","bold":true,"color":"blue"},{"text":" Recharged!","color":"blue"}]
execute as @s[scores={ogvz.dwarven_guard.oceans_pearl.cooldown.ticks=20..}] run scoreboard players set @s ogvz.dwarven_guard.oceans_pearl.cooldown.ticks 0

# Dwarven Guard - Glowing Shell
execute as @s[scores={ogvz.dwarven_guard.glowing_shell.cooldown.seconds=1..}] run scoreboard players add @s ogvz.dwarven_guard.glowing_shell.cooldown.ticks 1
execute as @s[scores={ogvz.dwarven_guard.glowing_shell.cooldown.ticks=20..}] run scoreboard players remove @s ogvz.dwarven_guard.glowing_shell.cooldown.seconds 1
execute as @s[scores={ogvz.dwarven_guard.glowing_shell.cooldown.ticks=20..,ogvz.dwarven_guard.glowing_shell.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={ogvz.dwarven_guard.glowing_shell.cooldown.ticks=20..,ogvz.dwarven_guard.glowing_shell.cooldown.seconds=0}] run title @s actionbar ["",{"text":"[Glowing Shell]","bold":true,"color":"blue"},{"text":" Recharged!","color":"blue"}]
execute as @s[scores={ogvz.dwarven_guard.glowing_shell.cooldown.ticks=20..}] run scoreboard players set @s ogvz.dwarven_guard.glowing_shell.cooldown.ticks 0

# Guardian - Beam
execute as @s[scores={ogvz.guardian.beam.cooldown.seconds=1..}] run scoreboard players add @s ogvz.guardian.beam.cooldown.ticks 1
execute as @s[scores={ogvz.guardian.beam.cooldown.ticks=20..}] run scoreboard players remove @s ogvz.guardian.beam.cooldown.seconds 1
execute as @s[scores={ogvz.guardian.beam.cooldown.ticks=20..,ogvz.guardian.beam.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={ogvz.guardian.beam.cooldown.ticks=20..,ogvz.guardian.beam.cooldown.seconds=0}] run title @s actionbar ["",{"text":"[Beam]","bold":true,"color":"blue"},{"text":" Recharged!","color":"blue"}]
execute as @s[scores={ogvz.guardian.beam.cooldown.ticks=20..}] run scoreboard players set @s ogvz.guardian.beam.cooldown.ticks 0

# Snowman - Snowball Barrage
execute as @s[scores={ogvz.snowman.snowball_barrage.cooldown.seconds=1..}] run scoreboard players add @s ogvz.snowman.snowball_barrage.cooldown.ticks 1
execute as @s[scores={ogvz.snowman.snowball_barrage.cooldown.ticks=20..}] run scoreboard players remove @s ogvz.snowman.snowball_barrage.cooldown.seconds 1
execute as @s[scores={ogvz.snowman.snowball_barrage.cooldown.ticks=20..,ogvz.snowman.snowball_barrage.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={ogvz.snowman.snowball_barrage.cooldown.ticks=20..,ogvz.snowman.snowball_barrage.cooldown.seconds=0}] run title @s actionbar ["",{"text":"[Snowball Barrage]","bold":true,"color":"blue"},{"text":" Recharged!","color":"blue"}]
execute as @s[scores={ogvz.snowman.snowball_barrage.cooldown.ticks=20..}] run scoreboard players set @s ogvz.snowman.snowball_barrage.cooldown.ticks 0

# Snowman - Freeze
execute as @s[scores={ogvz.snowman.freeze.cooldown.seconds=1..}] run scoreboard players add @s ogvz.snowman.freeze.cooldown.ticks 1
execute as @s[scores={ogvz.snowman.freeze.cooldown.ticks=20..}] run scoreboard players remove @s ogvz.snowman.freeze.cooldown.seconds 1
execute as @s[scores={ogvz.snowman.freeze.cooldown.ticks=20..,ogvz.snowman.freeze.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={ogvz.snowman.freeze.cooldown.ticks=20..,ogvz.snowman.freeze.cooldown.seconds=0}] run title @s actionbar ["",{"text":"[Freeze]","bold":true,"color":"blue"},{"text":" Recharged!","color":"blue"}]
execute as @s[scores={ogvz.snowman.freeze.cooldown.ticks=20..}] run scoreboard players set @s ogvz.snowman.freeze.cooldown.ticks 0

# Golem - Fissure
execute as @s[scores={ogvz.golem.fissure.cooldown.seconds=1..}] run scoreboard players add @s ogvz.golem.fissure.cooldown.ticks 1
execute as @s[scores={ogvz.golem.fissure.cooldown.ticks=20..}] run scoreboard players remove @s ogvz.golem.fissure.cooldown.seconds 1
execute as @s[scores={ogvz.golem.fissure.cooldown.ticks=20..,ogvz.golem.fissure.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={ogvz.golem.fissure.cooldown.ticks=20..,ogvz.golem.fissure.cooldown.seconds=0}] run title @s actionbar ["",{"text":"[Fissure]","bold":true,"color":"blue"},{"text":" Recharged!","color":"blue"}]
execute as @s[scores={ogvz.golem.fissure.cooldown.ticks=20..}] run scoreboard players set @s ogvz.golem.fissure.cooldown.ticks 0

# Golem - Leap
execute as @s[scores={ogvz.golem.leap.cooldown.seconds=1..}] run scoreboard players add @s ogvz.golem.leap.cooldown.ticks 1
execute as @s[scores={ogvz.golem.leap.cooldown.ticks=20..}] run scoreboard players remove @s ogvz.golem.leap.cooldown.seconds 1
execute as @s[scores={ogvz.golem.leap.cooldown.ticks=20..,ogvz.golem.leap.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={ogvz.golem.leap.cooldown.ticks=20..,ogvz.golem.leap.cooldown.seconds=0}] run title @s actionbar ["",{"text":"[Leap]","bold":true,"color":"blue"},{"text":" Recharged!","color":"blue"}]
execute as @s[scores={ogvz.golem.leap.cooldown.ticks=20..}] run scoreboard players set @s ogvz.golem.leap.cooldown.ticks 0
