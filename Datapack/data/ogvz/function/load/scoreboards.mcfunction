# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: ogvz:load
# File Name: scoreboards
# Function Name: ogvz:load/scoreboards
# File Purpose: Sets up the scoreboards.
# Created By: ropeFullOfHope
# 
# Created On: 2023.06.30
# Last Modified On: 
# Last Modified By: 
#
# Credit to: 
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

### Game Scoreboards
# Times the datapack was reloaded scoreboard
scoreboard objectives add ogvz.game.reload_count dummy
# Game time in ticks scoreboard
scoreboard objectives add ogvz.game.timer dummy
# Player count scoreboard
scoreboard objectives add ogvz.game.player_count dummy
# Shrine health scoreboard
scoreboard objectives add ogvz.game.shrine_health dummy
# Game phase scoreboard
# 0 - Setup phase
# 1 - Build phase
# 2 - Boss phase
# 3 - Zombie phase
# 4 - Last Dwarf phase
# 5 - Game Over phase
scoreboard objectives add ogvz.game.phase dummy
# Selected boss scoreboard
# 0 - none
# 1 - Dragon
# 2 - AI Dragon
# 3 - Wither
# 4 - AI Wither
# 5 - Assassin
# 6 - Elder Guardian
scoreboard objectives add ogvz.game.boss dummy

### Game Scoreboards Setup
scoreboard players add &ogvz ogvz.game.reload_count 1
scoreboard players reset Dwarves ogvz.game.player_count
scoreboard players reset Zombies ogvz.game.player_count
scoreboard objectives modify ogvz.game.player_count displayname {"text":"\u1000","font":"ogvz:custom_font"}
scoreboard objectives modify ogvz.game.player_count numberformat styled {"color":"red","bold":true}
scoreboard objectives setdisplay sidebar ogvz.game.player_count
scoreboard players set &ogvz ogvz.game.timer 0
scoreboard players set &ogvz ogvz.game.shrine_health 0
scoreboard players set &ogvz ogvz.game.phase 0
scoreboard players set &ogvz ogvz.game.boss 0

### Right click scoreboards
scoreboard objectives add ogvz.rclick.use minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add ogvz.rclick.cooldown dummy
scoreboard objectives add ogvz.rclick.custom_model_data dummy

### Miscellaneous scoreboards
scoreboard objectives add ogvz.misc.health health
scoreboard objectives add ogvz.misc.food food
scoreboard objectives add ogvz.misc.natural_regeneration_timer dummy
scoreboard objectives add ogvz.misc.leave_game minecraft.custom:minecraft.leave_game

### Dwarf scoreboards
# All dwarves
scoreboard objectives add ogvz.dwarf.mana_buildup.mana dummy
scoreboard objectives add ogvz.dwarf.mana_buildup.micromana dummy
scoreboard objectives add ogvz.dwarf.magic_health_potion.cooldown.ticks dummy
scoreboard objectives add ogvz.dwarf.magic_health_potion.cooldown.seconds dummy
scoreboard objectives add ogvz.dwarf.pearl_rod.cooldown.ticks dummy
scoreboard objectives add ogvz.dwarf.pearl_rod.cooldown.seconds dummy
scoreboard objectives add ogvz.dwarf.pearl_rod.warmup.ticks dummy
scoreboard objectives add ogvz.dwarf.pearl_rod.warmup.seconds dummy

# Builder
scoreboard objectives add ogvz.builder.summoning_book.cooldown.ticks dummy
scoreboard objectives add ogvz.builder.summoning_book.cooldown.seconds dummy

# Alchemist
scoreboard objectives add ogvz.alchemist.water_wand.cooldown.ticks dummy
scoreboard objectives add ogvz.alchemist.water_wand.cooldown.seconds dummy

### Dwarf hero scoreboards
# Wither Warrior
scoreboard objectives add ogvz.wither_warrior.whispersong.flame.ticks dummy

# Dwarven Guard
scoreboard objectives add ogvz.dwarven_guard.elder_guardian_eye.cooldown.ticks dummy
scoreboard objectives add ogvz.dwarven_guard.elder_guardian_eye.cooldown.seconds dummy

### Zombie scoreboards

scoreboard objectives add ogvz.guardian.beam.cooldown.ticks dummy
scoreboard objectives add ogvz.guardian.beam.cooldown.seconds dummy
scoreboard objectives add ogvz.spider.web.cooldown.ticks dummy
scoreboard objectives add ogvz.spider.web.cooldown.seconds dummy
scoreboard objectives add ogvz.ocelot.steal_mana.cooldown.ticks dummy
scoreboard objectives add ogvz.ocelot.steal_mana.cooldown.seconds dummy
scoreboard objectives add ogvz.chicken_nugget.fly.cooldown.ticks dummy
scoreboard objectives add ogvz.chicken_nugget.fly.cooldown.seconds dummy
scoreboard objectives add ogvz.chicken_nugget.fly.duration.ticks dummy
scoreboard objectives add ogvz.snowman.snowball_barrage.cooldown.ticks dummy
scoreboard objectives add ogvz.snowman.snowball_barrage.cooldown.seconds dummy
scoreboard objectives add ogvz.snowman.icicle.cooldown.ticks dummy
scoreboard objectives add ogvz.snowman.icicle.cooldown.seconds dummy
scoreboard objectives add ogvz.chillager.ice_cube.cooldown.ticks dummy
scoreboard objectives add ogvz.chillager.ice_cube.cooldown.seconds dummy
scoreboard objectives add ogvz.chillager.icicle.freeze.ticks dummy
scoreboard objectives add ogvz.chillager.invisibility.duration.ticks dummy
scoreboard objectives add ogvz.bee.honey.cooldown.ticks dummy
scoreboard objectives add ogvz.bee.honey.cooldown.seconds dummy
scoreboard objectives add ogvz.bee.pollen_bomb.cooldown.ticks dummy
scoreboard objectives add ogvz.bee.pollen_bomb.cooldown.seconds dummy
scoreboard objectives add ogvz.phantom.delirium.cooldown.ticks dummy
scoreboard objectives add ogvz.phantom.delirium.cooldown.seconds dummy
scoreboard objectives add ogvz.phantom.reusable_firework_rocket.cooldown.ticks dummy
scoreboard objectives add ogvz.blaze.fireball.cooldown.ticks dummy
scoreboard objectives add ogvz.blaze.fireball.cooldown.seconds dummy
scoreboard objectives add ogvz.blaze.fireblast.cooldown.ticks dummy
scoreboard objectives add ogvz.blaze.fireblast.cooldown.seconds dummy
scoreboard objectives add ogvz.blaze.firefly.cooldown.ticks dummy
scoreboard objectives add ogvz.blaze.firefly.cooldown.seconds dummy
scoreboard objectives add ogvz.blaze.firefly.duration.ticks dummy
scoreboard objectives add ogvz.hoglin.experience dummy
scoreboard objectives add ogvz.hoglin.use.golden_pickaxe minecraft.used:minecraft.golden_pickaxe
scoreboard objectives add ogvz.silverfish.roar.cooldown.ticks dummy
scoreboard objectives add ogvz.silverfish.roar.cooldown.seconds dummy
scoreboard objectives add ogvz.golem.fissure.cooldown.ticks dummy
scoreboard objectives add ogvz.golem.fissure.cooldown.seconds dummy
scoreboard objectives add ogvz.enderman.teleport.cooldown.ticks dummy
scoreboard objectives add ogvz.enderman.teleport.cooldown.seconds dummy
scoreboard objectives add ogvz.enderman.portal.cooldown.ticks dummy
scoreboard objectives add ogvz.enderman.portal.cooldown.seconds dummy
scoreboard objectives add ogvz.enderman.reinforce.cooldown.ticks dummy
scoreboard objectives add ogvz.enderman.reinforce.cooldown.seconds dummy

### Inventory info scoreboards
scoreboard objectives add ogvz.inventory.lava_bucket dummy
scoreboard objectives add ogvz.inventory.coas.7071 dummy
scoreboard objectives add ogvz.inventory.coas.15000 dummy
scoreboard objectives add ogvz.inventory.coas.15010 dummy
scoreboard objectives add ogvz.inventory.coas.15020 dummy
scoreboard objectives add ogvz.inventory.coas.15030 dummy
scoreboard objectives add ogvz.inventory.coas.15040 dummy
scoreboard objectives add ogvz.inventory.coas.15050 dummy
scoreboard objectives add ogvz.inventory.coas.15060 dummy
scoreboard objectives add ogvz.inventory.coas.15070 dummy
scoreboard objectives add ogvz.inventory.coas.15071 dummy
