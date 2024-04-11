# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick
# File Name: held_detect
# Function Name: dvz:tick/held_detect
# File Purpose: Handles the effects of all held items.
# Created By: ropeFullOfHope
# 
# Created On: 2023.07.27
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments: All held items are retextured nether stars.
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

### Held items (18xxx)
# Chicken Nugget - Descend
execute as @s[tag=chicken_nugget,tag=!descend_enabled] if items entity @s weapon.offhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=18000] at @s run function dvz:zombies/chicken_nugget/descend_enable
execute as @s[tag=chicken_nugget,tag=descend_enabled] unless items entity @s weapon.offhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=18000] at @s run function dvz:zombies/chicken_nugget/descend_disable
# Bee - Ascend/Descend
execute as @s[tag=bee,tag=!ascend_enabled,predicate=!dvz:is_sneaking] if items entity @s weapon.offhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=18001] at @s run function dvz:zombies/bee/ascend_enable
execute as @s[tag=bee,tag=!descend_enabled,predicate=dvz:is_sneaking] if items entity @s weapon.offhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=18001] at @s run function dvz:zombies/bee/descend_enable
execute as @s[tag=bee,tag=ascend_descend_enabled] unless items entity @s weapon.offhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=18001] at @s run function dvz:zombies/bee/ascend_descend_disable
# Blaze - Descend
execute as @s[tag=blaze,tag=!descend_enabled] if items entity @s weapon.offhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=18002] at @s run function dvz:zombies/blaze/descend_enable
execute as @s[tag=blaze,tag=descend_enabled] unless items entity @s weapon.offhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=18002] at @s run function dvz:zombies/blaze/descend_disable
