# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: 
# File Name: magma_cream
# Function Name: ogvz:give/magma_cream
# File Purpose: Gives you the Magma Cream.
# Created By: ropeFullOfHope
# 
# Created On: 2024.01.05
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={ \
    active_id:9000, \
    undroppable:1 \
  }, \
  minecraft:item_model="minecraft:magma_cream", \
  minecraft:unbreakable={show_in_tooltip:false}, \
  minecraft:item_name='{"text":"Magma Cream"}', \
  minecraft:lore=[ \
      '{"text":"Right-click to join the game!","color":"blue"}' \
  ] \
]
