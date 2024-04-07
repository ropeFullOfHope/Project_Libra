# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick/active_detect
# File Name: steal_mana_loop_2
# Function Name: dvz:zombies/ocelot/steal_mana_loop_2
# File Purpose: Loop to transfer an exact amount of mana if the target player has between 1 and 29 mana.
# Created By: ropeFullOfHope
# 
# Created On: 2023.07.11
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

# Give ocelot 1 mana and decrement the scoreboard by 1
experience add @p[tag=ray_origin] 1 levels
scoreboard players remove @s DVZ.current_mana.temp 1

# Repeat mana transfer loop until scoreboard reaches 0.
execute unless score @s DVZ.current_mana.temp matches ..0 run function dvz:zombies/ocelot/steal_mana_loop_2