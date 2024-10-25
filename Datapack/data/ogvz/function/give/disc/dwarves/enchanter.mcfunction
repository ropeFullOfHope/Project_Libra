# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: 
# File Name: enchanter
# Function Name: ogvz:give/disc/dwarves/enchanter
# File Purpose: Gives you the Enchanter disc.
# Created By: ropeFullOfHope
# 
# Created On: 2023.11.18
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:2005}, \
  minecraft:item_model="ogvz:disc_enchanter", \
  minecraft:unbreakable={show_in_tooltip:false}, \
  minecraft:item_name='{"text":"Enchanter","color":"blue"}', \
  minecraft:lore=[ \
    '{"text":"Tasked with enchanting weapons,","color":"blue"}', \
    '{"text":"tools and armor.","color":"blue"}' \
  ] \
]