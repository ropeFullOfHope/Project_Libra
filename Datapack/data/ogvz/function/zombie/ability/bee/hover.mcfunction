attribute @s[predicate=ogvz:input_jump_pressed] minecraft:gravity modifier add ogvz.bee.hover.ascend.gravity -0.02 add_value
attribute @s[predicate=!ogvz:input_jump_pressed] minecraft:gravity modifier remove ogvz.bee.hover.ascend.gravity

attribute @s[predicate=ogvz:input_sneak_pressed] minecraft:gravity modifier add ogvz.bee.hover.descend.gravity 0.02 add_value
attribute @s[predicate=!ogvz:input_sneak_pressed] minecraft:gravity modifier remove ogvz.bee.hover.descend.gravity
