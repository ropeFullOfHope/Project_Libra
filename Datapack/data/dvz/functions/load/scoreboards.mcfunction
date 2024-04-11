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
scoreboard objectives add dvz.leave_game minecraft.custom:minecraft.leave_game

### Misc scoreboards
scoreboard objectives add dvz.mana_buildup dummy
scoreboard objectives add dvz.whispersong_flame.ticks dummy
scoreboard objectives add dvz.chicken_fly.ticks dummy
scoreboard objectives add dvz.freeze.ticks dummy
scoreboard objectives add dvz.invisibility.ticks dummy
scoreboard objectives add dvz.reusable_firework_rocket.ticks dummy
scoreboard objectives add dvz.blaze_fly.ticks dummy
scoreboard objectives add dvz.experience dummy
scoreboard objectives add dvz.use.golden_pickaxe minecraft.used:minecraft.golden_pickaxe

### Active item cooldown scoreboards
# Dwarves
scoreboard objectives add dvz.summoning_book.tick dummy
scoreboard objectives add dvz.summoning_book.cool dummy
scoreboard objectives add dvz.water_wand.tick dummy
scoreboard objectives add dvz.water_wand.cool dummy
scoreboard objectives add dvz.pearl_rod.tick dummy
scoreboard objectives add dvz.pearl_rod.cool dummy
scoreboard objectives add dvz.elder_guardian_eye.tick dummy
scoreboard objectives add dvz.elder_guardian_eye.cool dummy

# Zombies
scoreboard objectives add dvz.beam.tick dummy
scoreboard objectives add dvz.beam.cool dummy
scoreboard objectives add dvz.web.tick dummy
scoreboard objectives add dvz.web.cool dummy
scoreboard objectives add dvz.steal_mana.tick dummy
scoreboard objectives add dvz.steal_mana.cool dummy
scoreboard objectives add dvz.fly.tick dummy
scoreboard objectives add dvz.fly.cool dummy
scoreboard objectives add dvz.snowball_barrage.tick dummy
scoreboard objectives add dvz.snowball_barrage.cool dummy
scoreboard objectives add dvz.icicle.tick dummy
scoreboard objectives add dvz.icicle.cool dummy
scoreboard objectives add dvz.ice_cube.tick dummy
scoreboard objectives add dvz.ice_cube.cool dummy
scoreboard objectives add dvz.honey.tick dummy
scoreboard objectives add dvz.honey.cool dummy
scoreboard objectives add dvz.pollen_bomb.tick dummy
scoreboard objectives add dvz.pollen_bomb.cool dummy
scoreboard objectives add dvz.delirium.tick dummy
scoreboard objectives add dvz.delirium.cool dummy
scoreboard objectives add dvz.fireball.tick dummy
scoreboard objectives add dvz.fireball.cool dummy
scoreboard objectives add dvz.fireblast.tick dummy
scoreboard objectives add dvz.fireblast.cool dummy
scoreboard objectives add dvz.firefly.tick dummy
scoreboard objectives add dvz.firefly.cool dummy
scoreboard objectives add dvz.roar.tick dummy
scoreboard objectives add dvz.roar.cool dummy
scoreboard objectives add dvz.fissure.tick dummy
scoreboard objectives add dvz.fissure.cool dummy
scoreboard objectives add dvz.teleport.tick dummy
scoreboard objectives add dvz.teleport.cool dummy
scoreboard objectives add dvz.portal.tick dummy
scoreboard objectives add dvz.portal.cool dummy
scoreboard objectives add dvz.reinforce.tick dummy
scoreboard objectives add dvz.reinforce.cool dummy

### Inventory info scoreboards
scoreboard objectives add dvz.inventory.lava_bucket dummy
scoreboard objectives add dvz.inventory.5000 dummy
scoreboard objectives add dvz.inventory.5010 dummy
scoreboard objectives add dvz.inventory.5020 dummy
scoreboard objectives add dvz.inventory.5030 dummy
scoreboard objectives add dvz.inventory.5040 dummy
scoreboard objectives add dvz.inventory.5050 dummy
scoreboard objectives add dvz.inventory.5060 dummy
scoreboard objectives add dvz.inventory.5070 dummy
scoreboard objectives add dvz.inventory.5071 dummy
scoreboard objectives add dvz.inventory.7071 dummy
