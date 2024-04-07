# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick
# File Name: adventure_switch
# Function Name: dvz:tick/adventure_switch
# File Purpose: Switches the player between survival mode and adventure mode based on the tag of their selected item.
# Created By: ropeFullOfHope
# 
# Created On: 2023.10.07
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments: Only used for Hoglin right now.
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

# Switches the player to adventure mode if they are holding an adventure tagged item.
execute as @s[tag=!adventure,gamemode=survival] if items entity @s weapon.mainhand minecraft:golden_pickaxe[minecraft:custom_data={adventure:1}] run tag @s add adventure
execute as @s[tag=adventure,gamemode=survival] run gamemode adventure @s

# Switches the player to survival mode if they are not holding an adventure tagged item.
execute as @s[tag=adventure,gamemode=adventure] unless items entity @s weapon.mainhand minecraft:golden_pickaxe[minecraft:custom_data={adventure:1}] run tag @s remove adventure
execute as @s[tag=!adventure,gamemode=adventure] run gamemode survival @s