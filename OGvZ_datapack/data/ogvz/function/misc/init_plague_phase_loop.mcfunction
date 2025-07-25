#> Description: Tags a specific amount of dwarves with the plague tag.

# Tag a random dwarf that hasn't been tagged yet.
tag @r[tag=ogvz.dwarf,tag=!ogvz.dwarf.plague] add ogvz.dwarf.plague

# Decrement the scoreboard.
scoreboard players remove &ogvz temp.kill_dwarf_count 1

# Repeat the loop until enough dwarves have been tagged.
execute if score &ogvz temp.kill_dwarf_count matches 1.. run function ogvz:misc/init_plague_phase_loop
