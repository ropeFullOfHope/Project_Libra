# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: ogvz:tick
# File Name: held_detect
# Function Name: ogvz:tick/held_detect
# File Purpose: Handles the effects of all held items.
# Created By: ropeFullOfHope
# 
# Created On: 2023.07.27
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments: All held items are retextured carrot on a stick.
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

### Held items (18xxx)
# Chicken Nugget - Descend
execute as @s[tag=ogvz.zombie.class.chicken_nugget,tag=!ogvz.zombie.class.chicken_nugget.descend_enabled] if items entity @s weapon.offhand minecraft:carrot_on_a_stick[minecraft:custom_data={passive_id:8000}] at @s run function ogvz:zombies/chicken_nugget/descend_enable
execute as @s[tag=ogvz.zombie.class.chicken_nugget,tag=ogvz.zombie.class.chicken_nugget.descend_enabled] unless items entity @s weapon.offhand minecraft:carrot_on_a_stick[minecraft:custom_data={passive_id:8000}] at @s run function ogvz:zombies/chicken_nugget/descend_disable
# Bee - Ascend/Descend
execute as @s[tag=ogvz.zombie.class.bee,tag=!ogvz.zombie.class.bee.ascend_enabled,predicate=!ogvz:is_sneaking] if items entity @s weapon.offhand minecraft:carrot_on_a_stick[minecraft:custom_data={passive_id:8001}] at @s run function ogvz:zombies/bee/ascend_enable
execute as @s[tag=ogvz.zombie.class.bee,tag=!ogvz.zombie.class.bee.descend_enabled,predicate=ogvz:is_sneaking] if items entity @s weapon.offhand minecraft:carrot_on_a_stick[minecraft:custom_data={passive_id:8001}] at @s run function ogvz:zombies/bee/descend_enable
execute as @s[tag=ogvz.zombie.class.bee,tag=ogvz.zombie.class.bee.ascend_descend_enabled] unless items entity @s weapon.offhand minecraft:carrot_on_a_stick[minecraft:custom_data={passive_id:8001}] at @s run function ogvz:zombies/bee/ascend_descend_disable
# Blaze - Descend
execute as @s[tag=ogvz.zombie.class.blaze,tag=!ogvz.zombie.class.blaze.descend_enabled] if items entity @s weapon.offhand minecraft:carrot_on_a_stick[minecraft:custom_data={passive_id:8002}] at @s run function ogvz:zombies/blaze/descend_enable
execute as @s[tag=ogvz.zombie.class.blaze,tag=ogvz.zombie.class.blaze.descend_enabled] unless items entity @s weapon.offhand minecraft:carrot_on_a_stick[minecraft:custom_data={passive_id:8002}] at @s run function ogvz:zombies/blaze/descend_disable
