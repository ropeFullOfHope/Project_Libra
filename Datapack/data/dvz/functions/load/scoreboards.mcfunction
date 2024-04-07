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
scoreboard objectives add DVZ.game.tick dummy
# Player count scoreboard
scoreboard objectives add DVZ.game.player_count dummy "\uEFFF"
# Game phase scoreboard
# 0 - Setup phase
# 1 - Build phase
# 2 - Boss phase
# 3 - Zombie phase
# 4 - Last Dwarf phase
# 5 - Game Over phase
scoreboard objectives add DVZ.game.phase dummy
# Selected boss scoreboard
# 0 - none
# 1 - Dragon
# 2 - AI Dragon
# 3 - Wither
# 4 - AI Wither
# 5 - Assassin
# 6 - Elder Guardian
scoreboard objectives add DVZ.game.boss dummy

### Game Scoreboards Setup
scoreboard players reset Dwarves DVZ.game.player_count
scoreboard players reset Zombies DVZ.game.player_count
scoreboard objectives modify DVZ.game.player_count numberformat styled {"color":"red","bold":true}
scoreboard objectives setdisplay sidebar DVZ.game.player_count
scoreboard players set &dvz DVZ.game.phase 0
scoreboard players set &dvz DVZ.game.boss 0

### Technical scoreboards
scoreboard objectives add DVZ.rclick minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add DVZ.rclick.cool dummy
scoreboard objectives add DVZ.rclick.custom_model_data dummy
scoreboard objectives add DVZ.result.score dummy
scoreboard objectives add DVZ.leave_game minecraft.custom:minecraft.leave_game

### Misc scoreboards
scoreboard objectives add DVZ.mana_buildup dummy
scoreboard objectives add DVZ.whispersong_flame.tick dummy
scoreboard objectives add DVZ.chicken_fly.tick dummy
scoreboard objectives add DVZ.freeze.tick dummy
scoreboard objectives add DVZ.invisibility.tick dummy
scoreboard objectives add DVZ.reusable_firework_rocket.tick dummy
scoreboard objectives add DVZ.blaze_fly.tick dummy
scoreboard objectives add DVZ.experience dummy
scoreboard objectives add DVZ.use.golden_pickaxe minecraft.used:minecraft.golden_pickaxe

### Active item cooldown scoreboards
# Dwarves
scoreboard objectives add DVZ.summoning_book.tick dummy
scoreboard objectives add DVZ.summoning_book.cool dummy
scoreboard objectives add DVZ.water_wand.tick dummy
scoreboard objectives add DVZ.water_wand.cool dummy
scoreboard objectives add DVZ.pearl_rod.tick dummy
scoreboard objectives add DVZ.pearl_rod.cool dummy
scoreboard objectives add DVZ.elder_guardian_eye.tick dummy
scoreboard objectives add DVZ.elder_guardian_eye.cool dummy

# Zombies
scoreboard objectives add DVZ.beam.tick dummy
scoreboard objectives add DVZ.beam.cool dummy
scoreboard objectives add DVZ.web.tick dummy
scoreboard objectives add DVZ.web.cool dummy
scoreboard objectives add DVZ.steal_mana.tick dummy
scoreboard objectives add DVZ.steal_mana.cool dummy
scoreboard objectives add DVZ.fly.tick dummy
scoreboard objectives add DVZ.fly.cool dummy
scoreboard objectives add DVZ.snowball_barrage.tick dummy
scoreboard objectives add DVZ.snowball_barrage.cool dummy
scoreboard objectives add DVZ.icicle.tick dummy
scoreboard objectives add DVZ.icicle.cool dummy
scoreboard objectives add DVZ.ice_cube.tick dummy
scoreboard objectives add DVZ.ice_cube.cool dummy
scoreboard objectives add DVZ.honey.tick dummy
scoreboard objectives add DVZ.honey.cool dummy
scoreboard objectives add DVZ.pollen_bomb.tick dummy
scoreboard objectives add DVZ.pollen_bomb.cool dummy
scoreboard objectives add DVZ.delirium.tick dummy
scoreboard objectives add DVZ.delirium.cool dummy
scoreboard objectives add DVZ.fireball.tick dummy
scoreboard objectives add DVZ.fireball.cool dummy
scoreboard objectives add DVZ.fireblast.tick dummy
scoreboard objectives add DVZ.fireblast.cool dummy
scoreboard objectives add DVZ.firefly.tick dummy
scoreboard objectives add DVZ.firefly.cool dummy
scoreboard objectives add DVZ.roar.tick dummy
scoreboard objectives add DVZ.roar.cool dummy
scoreboard objectives add DVZ.fissure.tick dummy
scoreboard objectives add DVZ.fissure.cool dummy
scoreboard objectives add DVZ.teleport.tick dummy
scoreboard objectives add DVZ.teleport.cool dummy
scoreboard objectives add DVZ.portal.tick dummy
scoreboard objectives add DVZ.portal.cool dummy
scoreboard objectives add DVZ.reinforce.tick dummy
scoreboard objectives add DVZ.reinforce.cool dummy

### Inventory info scoreboards
scoreboard objectives add DVZ.inventory.lava_bucket dummy
scoreboard objectives add DVZ.inventory.5000 dummy
scoreboard objectives add DVZ.inventory.5010 dummy
scoreboard objectives add DVZ.inventory.5020 dummy
scoreboard objectives add DVZ.inventory.5030 dummy
scoreboard objectives add DVZ.inventory.5040 dummy
scoreboard objectives add DVZ.inventory.5050 dummy
scoreboard objectives add DVZ.inventory.5060 dummy
scoreboard objectives add DVZ.inventory.5070 dummy
scoreboard objectives add DVZ.inventory.5071 dummy
scoreboard objectives add DVZ.inventory.7071 dummy
