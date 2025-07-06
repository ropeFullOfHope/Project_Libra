# Return if game isn't in setup phase.
execute unless score &ogvz ogvz.game.phase matches 0 run return 0

kill @e[type=minecraft:marker,tag=ogvz.marker.zombie_spawn.beta]
kill @e[type=minecraft:block_display,tag=ogvz.block_display.zombie_spawn.beta]
kill @e[type=minecraft:text_display,tag=ogvz.text_display.zombie_spawn.beta]

forceload add ~ ~

tp @s ~ ~6 ~

execute at @s run place template ogvz:zombie_spawn/standard ~-4 ~-1 ~-4

execute at @s align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:marker ~ ~ ~ {Tags:["ogvz.marker.zombie_spawn","ogvz.marker.zombie_spawn.beta","ogvz.kill_on_reload"]}

execute at @s align xyz positioned ~0.25 ~0.25 ~0.25 run summon minecraft:block_display ~ ~ ~ { \
  Tags:["ogvz.block_display.zombie_spawn","ogvz.block_display.zombie_spawn.beta","ogvz.kill_on_reload"], \
  brightness:{sky:15,block:15}, \
  transformation:{ \
    left_rotation:[0f,0f,0f,1f], \
    right_rotation:[0f,0f,0f,1f], \
    translation:[0f,0f,0f], \
    scale:[0.5f,0.5f,0.5f] \
  }, \
  block_state:{Name:"minecraft:crying_obsidian"} \
}

execute at @s align xyz positioned ~0.5 ~1.0 ~0.5 run summon minecraft:text_display ~ ~ ~ { \
  Tags:["ogvz.text_display.zombie_spawn","ogvz.text_display.zombie_spawn.beta","ogvz.kill_on_reload"], \
  text:"Beta", \
  billboard:"center" \
}

execute as @a[tag=ogvz.admin] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 2

tellraw @a[tag=ogvz.admin] [ \
  "", \
  {"text":"SETUP: ","bold":true,"color":"red"}, \
  {"selector":"@s","color":"red"}, \
  {"text":" placed a Standard Zombie Spawn Beta.","color":"red"} \
]
