team join d9DEAD @s

tag @s add ogvz.zombie

# If the game is in Zombie, Last Stand or Game Over phases, give the player spawn discs.
# If the player has the punish tag, give them only the zombie and skeleton variant discs.
execute as @s[tag=!ogvz.zombie.punish] at @s if score &ogvz ogvz.game.phase matches 3..5 run function ogvz:zombie/give_discs
execute as @s[tag=ogvz.zombie.punish] at @s if score &ogvz ogvz.game.phase matches 3..5 run function ogvz:zombie/give_discs_punish

tag @s remove ogvz.zombie.punish

# If the game is in Build or Boss phase, tell the player to wait for the boss kill.
execute if score &ogvz ogvz.game.phase matches 1..2 run tellraw @s [ \
  "", \
  {text:"\u1120\u1121\u1122\n",font:"ogvz:custom"}, \
  {text:"Hang tight, you’ll join the fight as a Zombie once the Boss is defeated.",color:"light_purple"} \
]
