#> Description: Initializes the plague phase.

# Set the game pahase to 3 - Plague phase.
scoreboard players set &ogvz ogvz.game.phase 3

# Create a temporary scoreboard that holds a constant number 100.
scoreboard objectives add temp.const.100 dummy
scoreboard players set &ogvz temp.const.100 100

# Create a temporary scoreboard that holds a constant number -1.
scoreboard objectives add temp.const.-1 dummy
scoreboard players set &ogvz temp.const.-1 -1

# Create a temporary scorebord and make it hold the number of currently active players.
scoreboard objectives add temp.total_player_count dummy
scoreboard players operation &ogvz temp.total_player_count = Dwarves ogvz.game.player_count
scoreboard players operation &ogvz temp.total_player_count += Zombies ogvz.game.player_count

# Create a temporary scoreboard and store the amount of dwarf players that need to be killed.
scoreboard objectives add temp.kill_dwarf_count dummy
scoreboard players set &ogvz temp.kill_dwarf_count 100
scoreboard players operation &ogvz temp.kill_dwarf_count -= &ogvz ogvz.game.zombie_players.percentage.min
scoreboard players operation &ogvz temp.kill_dwarf_count *= &ogvz temp.total_player_count
scoreboard players operation &ogvz temp.kill_dwarf_count /= &ogvz temp.const.100
scoreboard players operation &ogvz temp.kill_dwarf_count *= &ogvz temp.const.-1
scoreboard players operation &ogvz temp.kill_dwarf_count += Dwarves ogvz.game.player_count

# If at least one dwarf has to be killed, display a message to all players who joined the game that the plague is happening.
execute if score &ogvz temp.kill_dwarf_count matches 1.. run tellraw @a[tag=ogvz.joined_game] [ \
  "", \
  {text:"\u1120\u1121\u1122\n",font:"ogvz:custom"}, \
  {text:"A deadly ",color:"light_purple"}, \
  {text:"Plague",color:"light_purple",bold:true}, \
  {text:" spreads through the dwarven keep.",color:"light_purple"} \
]

# Run a loop that tags the required number of dwarves to kill.
execute if score &ogvz temp.kill_dwarf_count matches 1.. run function ogvz:misc/init_plague_phase_loop

# Give short darkness to all plagued players. 
effect give @a[tag=ogvz.dwarf.plague] minecraft:darkness 2 0 true

# Remove temporary scoreboards.
scoreboard objectives remove temp.const.100
scoreboard objectives remove temp.const.-1
scoreboard objectives remove temp.total_player_count
