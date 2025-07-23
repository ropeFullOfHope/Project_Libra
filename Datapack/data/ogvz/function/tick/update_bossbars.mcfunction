# Make the bossbars visible to all players.
# This does not make them actually visible, it just makes it so all players are able to see them once they are made visible.
bossbar set ogvz:boss_timer players @a
bossbar set ogvz:shrine_health players @a
bossbar set ogvz:ender_dragon_health players @a
bossbar set ogvz:assassin_timer players @a
bossbar set ogvz:elder_guardian_health players @a

# Store the shrine health into the shrine health bossbar.
execute store result bossbar ogvz:shrine_health value run scoreboard players get &ogvz ogvz.game.shrine_health

# Store the current game time into the boss timer.
execute store result bossbar ogvz:boss_timer value run scoreboard players get &ogvz ogvz.game.timer
