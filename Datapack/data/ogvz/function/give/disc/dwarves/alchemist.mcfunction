# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: 
# File Name: alchemist
# Function Name: ogvz:give/disc/dwarves/alchemist
# File Purpose: Gives you the Alchemist disc.
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
  minecraft:custom_data={active_id:2004}, \
  minecraft:item_model="ogvz:disc_alchemist", \
  minecraft:unbreakable={show_in_tooltip:false}, \
  minecraft:item_name='{"text":"Alchemist","color":"blue"}', \
  minecraft:lore=[ \
    '{"text":"Tasked with brewing magic","color":"blue"}', \
    '{"text":"potions.","color":"blue"}' \
  ] \
]