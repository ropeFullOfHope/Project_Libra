#> Description: Handles effects of certain custom enchantments.

# Curse of Unyielding
execute as @s[tag=!ogvz.adventure.curse_of_unyielding] if items entity @s weapon.mainhand #minecraft:pickaxes[minecraft:enchantments~[{enchantments:"ogvz:unyielding_curse"}]] run tag @s add ogvz.adventure.curse_of_unyielding
execute as @s[tag=ogvz.adventure.curse_of_unyielding] unless items entity @s weapon.mainhand #minecraft:pickaxes[minecraft:enchantments~[{enchantments:"ogvz:unyielding_curse"}]] run tag @s remove ogvz.adventure.curse_of_unyielding
