# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:load
# File Name: scoreboards
# Function Name: dvz:load/scoreboards
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
# Game time in ticks scoreboard
scoreboard objectives add dvz.game.time dummy
# Player count scoreboard
scoreboard objectives add dvz.game.player_count dummy "\uEFFF"
# Game phase scoreboard
# 0 - Setup phase
# 1 - Build phase
# 2 - Boss phase
# 3 - Zombie phase
# 4 - Last Dwarf phase
# 5 - Game Over phase
scoreboard objectives add dvz.game.phase dummy
# Selected boss scoreboard
# 0 - none
# 1 - Dragon
# 2 - AI Dragon
# 3 - Wither
# 4 - AI Wither
# 5 - Assassin
# 6 - Elder Guardian
scoreboard objectives add dvz.game.boss dummy

### Game Scoreboards Setup
scoreboard players reset Dwarves dvz.game.player_count
scoreboard players reset Zombies dvz.game.player_count
scoreboard objectives modify dvz.game.player_count numberformat styled {"color":"red","bold":true}
scoreboard objectives setdisplay sidebar dvz.game.player_count
scoreboard players set &dvz dvz.game.phase 0
scoreboard players set &dvz dvz.game.boss 0

### Technical scoreboards
scoreboard objectives add dvz.rclick.use minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add dvz.rclick.cooldown dummy
scoreboard objectives add dvz.rclick.custom_model_data dummy
scoreboard objectives add dvz.var dummy
scoreboard objectives add dvz.misc.leave_game minecraft.custom:minecraft.leave_game

### Misc scoreboards
scoreboard objectives add dvz.dwarf.mana_buildup dummy
scoreboard objectives add dvz.wither_warrior.whispersong_flame.ticks dummy
scoreboard objectives add dvz.chicken_nugget.fly.ticks dummy
scoreboard objectives add dvz.chillager.freeze.ticks dummy
scoreboard objectives add dvz.chillager.invisibility.ticks dummy
scoreboard objectives add dvz.phantom.reusable_firework_rocket.ticks dummy
scoreboard objectives add dvz.blaze.firefly.ticks dummy
scoreboard objectives add dvz.hoglin.experience dummy
scoreboard objectives add dvz.hoglin.use.golden_pickaxe minecraft.used:minecraft.golden_pickaxe

### Active item cooldown scoreboards
# Dwarves
scoreboard objectives add dvz.builder.summoning_book.cooldown.ticks dummy
scoreboard objectives add dvz.builder.summoning_book.cooldown.seconds dummy
scoreboard objectives add dvz.water_wand.tick dummy
scoreboard objectives add dvz.water_wand.cool dummy
scoreboard objectives add dvz.pearl_rod.tick dummy
scoreboard objectives add dvz.pearl_rod.cool dummy
scoreboard objectives add dvz.elder_guardian_eye.tick dummy
scoreboard objectives add dvz.elder_guardian_eye.cool dummy

# Zombies
scoreboard objectives add dvz.guardian.beam.cooldown.ticks dummy
scoreboard objectives add dvz.guardian.beam.cooldown.seconds dummy
scoreboard objectives add dvz.spider.web.cooldown.ticks dummy
scoreboard objectives add dvz.spider.web.cooldown.seconds dummy
scoreboard objectives add dvz.ocelot.steal_mana.cooldown.ticks dummy
scoreboard objectives add dvz.ocelot.steal_mana.cooldown.seconds dummy
scoreboard objectives add dvz.chicken_nugget.fly.cooldown.ticks dummy
scoreboard objectives add dvz.chicken_nugget.fly.cooldown.seconds dummy
scoreboard objectives add dvz.snowman.snowball_barrage.cooldown.ticks dummy
scoreboard objectives add dvz.snowman.snowball_barrage.cooldown.seconds dummy
scoreboard objectives add dvz.snowman.icicle.cooldown.ticks dummy
scoreboard objectives add dvz.snowman.icicle.cooldown.seconds dummy
scoreboard objectives add dvz.chillager.ice_cube.cooldown.ticks dummy
scoreboard objectives add dvz.chillager.ice_cube.cooldown.seconds dummy
scoreboard objectives add dvz.bee.honey.cooldown.ticks dummy
scoreboard objectives add dvz.bee.honey.cooldown.seconds dummy
scoreboard objectives add dvz.bee.pollen_bomb.cooldown.ticks dummy
scoreboard objectives add dvz.bee.pollen_bomb.cooldown.seconds dummy
scoreboard objectives add dvz.phantom.delirium.cooldown.ticks dummy
scoreboard objectives add dvz.phantom.delirium.cooldown.seconds dummy
scoreboard objectives add dvz.blaze.fireball.cooldown.ticks dummy
scoreboard objectives add dvz.blaze.fireball.cooldown.seconds dummy
scoreboard objectives add dvz.blaze.fireblast.cooldown.ticks dummy
scoreboard objectives add dvz.blaze.fireblast.cooldown.seconds dummy
scoreboard objectives add dvz.firefly.tick dummy
scoreboard objectives add dvz.firefly.cool dummy
scoreboard objectives add dvz.silverfish.roar.cooldown.ticks dummy
scoreboard objectives add dvz.silverfish.roar.cooldown.seconds dummy
scoreboard objectives add dvz.golem.fissure.cooldown.ticks dummy
scoreboard objectives add dvz.golem.fissure.cooldown.seconds dummy
scoreboard objectives add dvz.enderman.teleport.cooldown.ticks dummy
scoreboard objectives add dvz.enderman.teleport.cooldown.seconds dummy
scoreboard objectives add dvz.enderman.portal.cooldown.ticks dummy
scoreboard objectives add dvz.enderman.portal.cooldown.seconds dummy
scoreboard objectives add dvz.enderman.reinforce.cooldown.ticks dummy
scoreboard objectives add dvz.enderman.reinforce.cooldown.seconds dummy

### Inventory info scoreboards
scoreboard objectives add dvz.inventory.lava_bucket dummy
scoreboard objectives add dvz.inventory.coas.7071 dummy
scoreboard objectives add dvz.inventory.coas.15000 dummy
scoreboard objectives add dvz.inventory.coas.15010 dummy
scoreboard objectives add dvz.inventory.coas.15020 dummy
scoreboard objectives add dvz.inventory.coas.15030 dummy
scoreboard objectives add dvz.inventory.coas.15040 dummy
scoreboard objectives add dvz.inventory.coas.15050 dummy
scoreboard objectives add dvz.inventory.coas.15060 dummy
scoreboard objectives add dvz.inventory.coas.15070 dummy
scoreboard objectives add dvz.inventory.coas.15071 dummy
