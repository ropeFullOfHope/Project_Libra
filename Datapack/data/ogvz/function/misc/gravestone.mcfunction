# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By:
# File Name: gravestone
# Function Name: ogvz:misc/gravestone
# File Purpose: Creates a walk-through gravestone below the player.
# Created By: ropeFullOfHope
# 
# Created On: 2024.06.28
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments: Players who have bought a custom death message can also get a special grave.
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

# Astraeos_ custom gravestone - Polished Blackstone Brick Wall + player name
execute as @s[predicate=ogvz:player/is_muffinarcades] align xyz run summon block_display ~0.125 ~ ~0.125 {Tags:["ogvz.block_display","ogvz.block_display.gravestone"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.75f,0.75f,0.75f]},block_state:{Name:"minecraft:polished_blackstone_brick_wall",Properties:{east:"low",west:"low"}}}
execute as @s[predicate=ogvz:player/is_muffinarcades] align xyz run summon text_display ~0.5 ~0.42 ~0.6975 {Tags:["ogvz.text_display","ogvz.text_display.gravestone"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]},text:'[{"selector":"@p[predicate=ogvz:player/is_muffinarcades]"}]',background:0}
execute as @s[predicate=ogvz:player/is_muffinarcades] run return 0

# Muff1nArcades custom gravestone - Nether Brick Wall + player name
execute as @s[predicate=ogvz:player/is_muffinarcades] align xyz run summon block_display ~0.125 ~ ~0.125 {Tags:["ogvz.block_display","ogvz.block_display.gravestone"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.75f,0.75f,0.75f]},block_state:{Name:"minecraft:nether_brick_wall",Properties:{east:"low",west:"low"}}}
execute as @s[predicate=ogvz:player/is_muffinarcades] align xyz run summon text_display ~0.5 ~0.42 ~0.6975 {Tags:["ogvz.text_display","ogvz.text_display.gravestone"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]},text:'[{"selector":"@p[predicate=ogvz:player/is_muffinarcades]"}]',background:0}
execute as @s[predicate=ogvz:player/is_muffinarcades] run return 0

# Default gravestone - Stone Brick Wall + player name
execute align xyz run summon block_display ~0.125 ~ ~0.125 {Tags:["ogvz.block_display","ogvz.block_display.gravestone"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.75f,0.75f,0.75f]},block_state:{Name:"minecraft:stone_brick_wall",Properties:{east:"low",west:"low"}}}
execute align xyz run summon text_display ~0.5 ~0.42 ~0.6975 {Tags:["ogvz.text_display","ogvz.text_display.gravestone"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]},text:'[{"selector":"@p"}]',background:0}
