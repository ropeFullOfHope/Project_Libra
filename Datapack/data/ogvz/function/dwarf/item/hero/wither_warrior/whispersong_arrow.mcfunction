# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: 
# File Name: whispersong_arrow
# Function Name: ogvz:dwarf/hero/wither_warrior/whispersong_arrow
# File Purpose: Applies a tag to a soul charged arrow and removes one soul charge.
# Created By: ropeFullOfHope
# 
# Created On: 2024.02.17
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

# Add a tag to the arrow, that let's it deal extra damage and show particles.
tag @s add temp.charged_whispersong_arrow

# Remove one soul charge from the wither warrior.
execute on origin run scoreboard players remove @s ogvz.wither_warrior.soul_charges.count 1
