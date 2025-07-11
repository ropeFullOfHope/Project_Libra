# Clear blocks - 0 ticks (0 seconds)
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=0}] run fill ~-12 ~-4 ~-3 ~12 ~2 ~3 minecraft:air
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=0}] run fill ~-11 ~-4 ~-5 ~11 ~2 ~5 minecraft:air
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=0}] run fill ~-10 ~-4 ~-7 ~10 ~2 ~7 minecraft:air
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=0}] run fill ~-9 ~-4 ~-8 ~9 ~2 ~8 minecraft:air
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=0}] run fill ~-8 ~-4 ~-9 ~8 ~2 ~9 minecraft:air
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=0}] run fill ~-7 ~-4 ~-10 ~7 ~2 ~10 minecraft:air
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=0}] run fill ~-5 ~-4 ~-11 ~5 ~2 ~11 minecraft:air
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=0}] run fill ~-3 ~-4 ~-12 ~3 ~2 ~12 minecraft:air

# Create inner circle - 0 ticks (0 seconds)
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=0}] run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:end_stone
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=0}] run playsound minecraft:entity.zombie.break_wooden_door player @a ~ ~ ~ 4 0.6
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=0}] run particle minecraft:block_crumble{block_state:"minecraft:end_stone"} ~ ~0.1 ~ 1 0 1 1 90

# Create middle circle - 20 ticks (1 seconds)
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=20}] run fill ~-1 ~-1 ~-1 ~1 ~-2 ~1 minecraft:end_stone
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=20}] run fill ~-1 ~-1 ~3 ~1 ~-1 ~3 minecraft:end_stone
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=20}] run fill ~3 ~-1 ~-1 ~3 ~-1 ~1 minecraft:end_stone
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=20}] run fill ~-1 ~-1 ~-3 ~1 ~-1 ~-3 minecraft:end_stone
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=20}] run fill ~-3 ~-1 ~-1 ~-3 ~-1 ~1 minecraft:end_stone
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=20}] run fill ~-2 ~-1 ~-2 ~-2 ~-1 ~-2 minecraft:end_stone
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=20}] run fill ~-2 ~-1 ~2 ~-2 ~-1 ~2 minecraft:end_stone
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=20}] run fill ~2 ~-1 ~-2 ~2 ~-1 ~-2 minecraft:end_stone
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=20}] run fill ~2 ~-1 ~2 ~2 ~-1 ~2 minecraft:end_stone
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=20}] run playsound minecraft:entity.zombie.break_wooden_door player @a ~ ~ ~ 4 0.6
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=20}] run particle minecraft:block_crumble{block_state:"minecraft:end_stone"} ~ ~0.1 ~ 2 0 2 1 360

# Create outer circle - 40 ticks (2 seconds)
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=40}] run fill ~-1 ~-1 ~-1 ~1 ~-3 ~1 minecraft:end_stone
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=40}] run fill ~-1 ~-1 ~3 ~1 ~-2 ~3 minecraft:end_stone
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=40}] run fill ~3 ~-1 ~-1 ~3 ~-2 ~1 minecraft:end_stone
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=40}] run fill ~-1 ~-1 ~-3 ~1 ~-2 ~-3 minecraft:end_stone
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=40}] run fill ~-3 ~-1 ~-1 ~-3 ~-2 ~1 minecraft:end_stone
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=40}] run fill ~-2 ~-1 ~-2 ~-2 ~-2 ~-2 minecraft:end_stone
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=40}] run fill ~-2 ~-1 ~2 ~-2 ~-2 ~2 minecraft:end_stone
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=40}] run fill ~2 ~-1 ~-2 ~2 ~-2 ~-2 minecraft:end_stone
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=40}] run fill ~2 ~-1 ~2 ~2 ~-2 ~2 minecraft:end_stone
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=40}] run fill ~-1 ~-1 ~5 ~1 ~-1 ~5 minecraft:end_stone
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=40}] run fill ~5 ~-1 ~-1 ~5 ~-1 ~1 minecraft:end_stone
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=40}] run fill ~-1 ~-1 ~-5 ~1 ~-1 ~-5 minecraft:end_stone
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=40}] run fill ~-5 ~-1 ~-1 ~-5 ~-1 ~1 minecraft:end_stone
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=40}] run fill ~-3 ~-1 ~4 ~-2 ~-1 ~4 minecraft:end_stone
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=40}] run fill ~2 ~-1 ~4 ~3 ~-1 ~4 minecraft:end_stone
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=40}] run fill ~-3 ~-1 ~-4 ~-2 ~-1 ~-4 minecraft:end_stone
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=40}] run fill ~2 ~-1 ~-4 ~3 ~-1 ~-4 minecraft:end_stone
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=40}] run fill ~-4 ~-1 ~2 ~-4 ~-1 ~3 minecraft:end_stone
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=40}] run fill ~-4 ~-1 ~-3 ~-4 ~-1 ~-2 minecraft:end_stone
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=40}] run fill ~4 ~-1 ~2 ~4 ~-1 ~3 minecraft:end_stone
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=40}] run fill ~4 ~-1 ~-3 ~4 ~-1 ~-2 minecraft:end_stone
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=40}] run fill ~-2 ~-3 ~-2 ~-2 ~-3 ~-2 minecraft:end_rod[facing=down]
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=40}] run fill ~-2 ~-3 ~2 ~-2 ~-3 ~2 minecraft:end_rod[facing=down]
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=40}] run fill ~2 ~-3 ~-2 ~2 ~-3 ~-2 minecraft:end_rod[facing=down]
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=40}] run fill ~2 ~-3 ~2 ~2 ~-3 ~2 minecraft:end_rod[facing=down]
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=40}] run playsound minecraft:entity.zombie.break_wooden_door player @a ~ ~ ~ 4 0.6
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=40}] run particle minecraft:block_crumble{block_state:"minecraft:end_stone"} ~ ~0.1 ~ 3 0 3 1 810

# Summon first end crystal - 70 ticks (3.5 seconds)
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=70}] run summon minecraft:end_crystal ~ ~ ~1 {Invulnerable:1b,ShowBottom:0b,Tags:["ogvz.enderman_portal.end_crystal","ogvz.kill_on_reload"]}
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=70}] run execute positioned ~ ~ ~1 run scoreboard players set @n[type=minecraft:end_crystal,tag=ogvz.enderman_portal.end_crystal] ogvz.misc.air_toggle 200
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=70}] run execute positioned ~ ~ ~1 run rotate @n[type=minecraft:end_crystal,tag=ogvz.enderman_portal.end_crystal] 0 0
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=70}] run playsound minecraft:block.respawn_anchor.charge player @a ~ ~ ~1 4 0.7
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=70}] run particle minecraft:reverse_portal ~ ~ ~1 0 0 0 0.5 50

# Summon second end crystal - 80 ticks (4 seconds)
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=80}] run summon minecraft:end_crystal ~-1 ~ ~ {Invulnerable:1b,ShowBottom:0b,Tags:["ogvz.enderman_portal.end_crystal","ogvz.kill_on_reload"]}
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=80}] run execute positioned ~-1 ~ ~ run scoreboard players set @n[type=minecraft:end_crystal,tag=ogvz.enderman_portal.end_crystal] ogvz.misc.air_toggle 200
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=80}] run execute positioned ~-1 ~ ~ run rotate @n[type=minecraft:end_crystal,tag=ogvz.enderman_portal.end_crystal] 90 0
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=80}] run playsound minecraft:block.respawn_anchor.charge player @a ~-1 ~ ~ 4 0.7
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=80}] run particle minecraft:reverse_portal ~-1 ~ ~ 0 0 0 0.5 50

# Summon third end crystal - 90 ticks (4.5 seconds)
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=90}] run summon minecraft:end_crystal ~ ~ ~-1 {Invulnerable:1b,ShowBottom:0b,Tags:["ogvz.enderman_portal.end_crystal","ogvz.kill_on_reload"]}
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=90}] run execute positioned ~ ~ ~-1 run scoreboard players set @n[type=minecraft:end_crystal,tag=ogvz.enderman_portal.end_crystal] ogvz.misc.air_toggle 200
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=90}] run execute positioned ~ ~ ~-1 run rotate @n[type=minecraft:end_crystal,tag=ogvz.enderman_portal.end_crystal] 180 0
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=90}] run playsound minecraft:block.respawn_anchor.charge player @a ~ ~ ~-1 4 0.7
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=90}] run particle minecraft:reverse_portal ~ ~ ~-1 0 0 0 0.5 50

# Summon fourth end crystal - 100 ticks (5 seconds)
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=100}] run summon minecraft:end_crystal ~1 ~ ~ {Invulnerable:1b,ShowBottom:0b,Tags:["ogvz.enderman_portal.end_crystal","ogvz.kill_on_reload"]}
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=100}] run execute positioned ~1 ~ ~ run scoreboard players set @n[type=minecraft:end_crystal,tag=ogvz.enderman_portal.end_crystal] ogvz.misc.air_toggle 200
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=100}] run execute positioned ~1 ~ ~ run rotate @n[type=minecraft:end_crystal,tag=ogvz.enderman_portal.end_crystal] 270 0
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=100}] run playsound minecraft:block.respawn_anchor.charge player @a ~1 ~ ~ 4 0.7
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=100}] run particle minecraft:reverse_portal ~1 ~ ~ 0 0 0 0.5 50

# Teleport end crystals forward - 120..159 ticks (6..7.95 seconds)
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=120..159}] run execute as @e[type=minecraft:end_crystal,tag=ogvz.enderman_portal.end_crystal] at @s run tp @s ^ ^ ^0.2

# Play sound - 160..175 ticks (8..8.25 secods)
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=160}] run playsound minecraft:block.end_portal_frame.fill player @a ~ ~ ~9 4 1
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=165}] run playsound minecraft:block.end_portal_frame.fill player @a ~-9 ~ ~ 4 1
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=170}] run playsound minecraft:block.end_portal_frame.fill player @a ~ ~ ~-9 4 1
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=175}] run playsound minecraft:block.end_portal_frame.fill player @a ~9 ~ ~ 4 1

# Drain the enderman's power - 180 ticks (9 seconds)
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=180}] run execute positioned ~ ~-2 ~ align xyz summon minecraft:marker run tag @s add temp.center
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=180}] run execute as @e[type=minecraft:end_crystal,tag=ogvz.enderman_portal.end_crystal] run data modify entity @s beam_target set from entity @n[type=minecraft:marker,tag=temp.center] Pos
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=180}] run kill @e[type=minecraft:marker,tag=temp.center]
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=180}] run playsound minecraft:block.portal.trigger player @a ~ ~ ~ 4 1

# Open the portal - 270 ticks (13.5 seconds)
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=270}] run tag @s remove ogvz.zombie.class.enderman.create_portal.cutscene
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=270}] run kill @s
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=270}] run execute as @e[type=minecraft:end_crystal,tag=ogvz.enderman_portal.end_crystal] run data remove entity @s beam_target
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=270}] run summon minecraft:lightning_bolt ~ ~2 ~
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=270}] run playsound minecraft:block.end_portal.spawn player @a ~ ~10000 ~ 1 1 1
execute as @s[scores={ogvz.enderman.create_portal.cutscene.ticks=270}] run tellraw @a {text:"An Ender Portal has been opened!",color:"light_purple",bold:true}

scoreboard players add @s ogvz.enderman.create_portal.cutscene.ticks 1