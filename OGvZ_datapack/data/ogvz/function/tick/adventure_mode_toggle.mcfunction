#> Description: Toggles the player between adventure and survival mode.

# If the player is in survival mode and has any adventure tag, switch them to the adventure mode.
execute as @s[gamemode=survival] unless entity @s[ \
  tag=!ogvz.adventure.lobby, \
  tag=!ogvz.adventure.zombie_spawn, \
  tag=!ogvz.adventure.curse_of_unyielding \
] run gamemode adventure @s

# If the player is in adventure mode and has no adventure tags, switch them to the survival mode.
execute as @s[gamemode=adventure] if entity @s[ \
  tag=!ogvz.adventure.lobby, \
  tag=!ogvz.adventure.zombie_spawn, \
  tag=!ogvz.adventure.curse_of_unyielding \
] run gamemode survival @s
