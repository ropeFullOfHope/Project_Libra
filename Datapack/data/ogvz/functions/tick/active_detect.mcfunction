# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: ogvz:tick
# File Name: active_detect
# Function Name: ogvz:tick/active_detect
# File Purpose: Main branch for all right-click items/abilities (active items/abilities).
# Created By: ropeFullOfHope
# 
# Created On: 2023.07.09
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments: Tests for and executes functions from right-clicking a retextured carrot on a stick.
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

execute unless entity @s[scores={ogvz.rclick.use=1..}] run return 0

scoreboard players set @s ogvz.rclick.use 0

execute unless items entity @s weapon.* minecraft:carrot_on_a_stick run return 0

execute if items entity @s weapon.mainhand minecraft:carrot_on_a_stick run tag @s add ogvz.use_mainhand
execute if items entity @s[tag=!ogvz.use_mainhand] weapon.offhand minecraft:carrot_on_a_stick run tag @s add ogvz.use_offhand

execute unless entity @s[scores={ogvz.rclick.cooldown=0}] run return 0

scoreboard players set @s ogvz.rclick.cooldown 5

execute store result score @s[tag=ogvz.use_mainhand] ogvz.rclick.custom_model_data run data get entity @s SelectedItem.components."minecraft:custom_model_data"
execute store result score @s[tag=ogvz.use_offhand] ogvz.rclick.custom_model_data run data get entity @s Inventory[{Slot:-106b}].components."minecraft:custom_model_data"

### Admin tools (1xxx)


### Discs (2xxx)
# Dwarf discs (20xx)
execute as @s[tag=!selected_class,tag=dwarves,scores={ogvz.rclick.custom_model_data=2000}] at @s run function ogvz:dwarves/disc/builder
execute as @s[tag=!selected_class,tag=dwarves,scores={ogvz.rclick.custom_model_data=2001}] at @s run function ogvz:dwarves/disc/blacksmith
execute as @s[tag=!selected_class,tag=dwarves,scores={ogvz.rclick.custom_model_data=2002}] at @s run function ogvz:dwarves/disc/tailor
execute as @s[tag=!selected_class,tag=dwarves,scores={ogvz.rclick.custom_model_data=2003}] at @s run function ogvz:dwarves/disc/baker
execute as @s[tag=!selected_class,tag=dwarves,scores={ogvz.rclick.custom_model_data=2004}] at @s run function ogvz:dwarves/disc/alchemist
execute as @s[tag=!selected_class,tag=dwarves,scores={ogvz.rclick.custom_model_data=2005}] at @s run function ogvz:dwarves/disc/enchanter
# Zombie discs (21xx)
execute as @s[tag=!selected_class,tag=zombies,scores={ogvz.rclick.custom_model_data=2100}] at @s run function ogvz:zombies/disc/zombie
execute as @s[tag=!selected_class,tag=zombies,scores={ogvz.rclick.custom_model_data=2101}] at @s run function ogvz:zombies/disc/husk
execute as @s[tag=!selected_class,tag=zombies,scores={ogvz.rclick.custom_model_data=2102}] at @s run function ogvz:zombies/disc/vindicator
execute as @s[tag=!selected_class,tag=zombies,scores={ogvz.rclick.custom_model_data=2103}] at @s run function ogvz:zombies/disc/drowned
execute as @s[tag=!selected_class,tag=zombies,scores={ogvz.rclick.custom_model_data=2104}] at @s run function ogvz:zombies/disc/skeleton
execute as @s[tag=!selected_class,tag=zombies,scores={ogvz.rclick.custom_model_data=2105}] at @s run function ogvz:zombies/disc/wither_skeleton
execute as @s[tag=!selected_class,tag=zombies,scores={ogvz.rclick.custom_model_data=2106}] at @s run function ogvz:zombies/disc/pillager
execute as @s[tag=!selected_class,tag=zombies,scores={ogvz.rclick.custom_model_data=2107}] at @s run function ogvz:zombies/disc/guardian
execute as @s[tag=!selected_class,tag=zombies,scores={ogvz.rclick.custom_model_data=2108}] at @s run function ogvz:zombies/disc/creeper
execute as @s[tag=!selected_class,tag=zombies,scores={ogvz.rclick.custom_model_data=2109}] at @s run function ogvz:zombies/disc/spider
execute as @s[tag=!selected_class,tag=zombies,scores={ogvz.rclick.custom_model_data=2110}] at @s run function ogvz:zombies/disc/wolf
execute as @s[tag=!selected_class,tag=zombies,scores={ogvz.rclick.custom_model_data=2111}] at @s run function ogvz:zombies/disc/ocelot
execute as @s[tag=!selected_class,tag=zombies,scores={ogvz.rclick.custom_model_data=2112}] at @s run function ogvz:zombies/disc/chicken_nugget
execute as @s[tag=!selected_class,tag=zombies,scores={ogvz.rclick.custom_model_data=2113}] at @s run function ogvz:zombies/disc/snowman
execute as @s[tag=!selected_class,tag=zombies,scores={ogvz.rclick.custom_model_data=2114}] at @s run function ogvz:zombies/disc/chillager
execute as @s[tag=!selected_class,tag=zombies,scores={ogvz.rclick.custom_model_data=2115}] at @s run function ogvz:zombies/disc/bee
execute as @s[tag=!selected_class,tag=zombies,scores={ogvz.rclick.custom_model_data=2116}] at @s run function ogvz:zombies/disc/phantom
execute as @s[tag=!selected_class,tag=zombies,scores={ogvz.rclick.custom_model_data=2117}] at @s run function ogvz:zombies/disc/blaze
execute as @s[tag=!selected_class,tag=zombies,scores={ogvz.rclick.custom_model_data=2118}] at @s run function ogvz:zombies/disc/hoglin
execute as @s[tag=!selected_class,tag=zombies,scores={ogvz.rclick.custom_model_data=2119}] at @s run function ogvz:zombies/disc/silverfish
execute as @s[tag=!selected_class,tag=zombies,scores={ogvz.rclick.custom_model_data=2120}] at @s run function ogvz:zombies/disc/golem
execute as @s[tag=!selected_class,tag=zombies,scores={ogvz.rclick.custom_model_data=2121}] at @s run function ogvz:zombies/disc/enderman
execute as @s[tag=!selected_class,tag=zombies,scores={ogvz.rclick.custom_model_data=2122}] at @s run function ogvz:zombies/disc/ghast
execute as @s[tag=!selected_class,tag=zombies,scores={ogvz.rclick.custom_model_data=2123}] at @s run function ogvz:zombies/disc/ravager
execute as @s[tag=!selected_class,tag=zombies,scores={ogvz.rclick.custom_model_data=2124}] at @s run function ogvz:zombies/disc/johnny

### Dwarf items (3xxx)
# Dwarf books (30xx)
execute as @s[tag=builder,scores={ogvz.rclick.custom_model_data=3000}] at @s run function ogvz:dwarves/summoning_book/builder
execute as @s[tag=blacksmith,scores={ogvz.rclick.custom_model_data=3001}] at @s run function ogvz:dwarves/summoning_book/blacksmith
execute as @s[tag=tailor,scores={ogvz.rclick.custom_model_data=3002}] at @s run function ogvz:dwarves/summoning_book/tailor
execute as @s[tag=baker,scores={ogvz.rclick.custom_model_data=3003}] at @s run function ogvz:dwarves/summoning_book/baker
execute as @s[tag=alchemist,scores={ogvz.rclick.custom_model_data=3004}] at @s run function ogvz:dwarves/summoning_book/alchemist
execute as @s[tag=enchanter,scores={ogvz.rclick.custom_model_data=3005}] at @s run function ogvz:dwarves/summoning_book/enchanter
execute as @s[tag=dwarves,scores={ogvz.rclick.custom_model_data=3006}] at @s run function ogvz:dwarves/legendary_book
# Dwarf items (31xx)
execute as @s[tag=mana,scores={ogvz.rclick.custom_model_data=3100}] at @s run function ogvz:dwarves/magic_potion/health
execute as @s[tag=mana,scores={ogvz.rclick.custom_model_data=3101}] at @s run function ogvz:dwarves/magic_potion/speed
execute as @s[tag=mana,scores={ogvz.rclick.custom_model_data=3102}] at @s run function ogvz:dwarves/magic_potion/strength
execute as @s[tag=mana,scores={ogvz.rclick.custom_model_data=3103}] at @s run function ogvz:dwarves/magic_potion/jump_boost
execute as @s[tag=mana,scores={ogvz.rclick.custom_model_data=3104}] at @s run function ogvz:dwarves/pearl_rod
execute as @s[tag=mana,scores={ogvz.rclick.custom_model_data=3105}] at @s run function ogvz:dwarves/water_wand
execute as @s[tag=mana,scores={ogvz.rclick.custom_model_data=3106}] at @s run function ogvz:dwarves/fertilizer

### Dwarf hero items (4xxx)
execute as @s[tag=dragon_warrior,scores={ogvz.rclick.custom_model_data=4001}] at @s run function ogvz:dwarves/heroes/items/dragon_warrior/dwarven_ruby
execute as @s[tag=dwarven_guard,scores={ogvz.rclick.custom_model_data=4004}] at @s run function ogvz:dwarves/hero/dwarven_guard/elder_guardian_eye

### Dwarf legendary items (5xxx)


### Zombie abilities (7xxx)
# Guardian (700x)
execute as @s[tag=guardian,scores={ogvz.rclick.custom_model_data=7000}] at @s run function ogvz:zombies/guardian/beam
# Creeper (701x)
execute as @s[tag=creeper,scores={ogvz.rclick.custom_model_data=7010}] at @s run function ogvz:zombies/creeper/explode
# Spider (702x)
execute as @s[tag=spider,scores={ogvz.rclick.custom_model_data=7020}] at @s run function ogvz:zombies/spider/web
# Wolf (703x)
execute as @s[tag=wolf,scores={ogvz.rclick.custom_model_data=7030}] at @s run function ogvz:zombies/wolf/howl
# Ocelot (704x)
execute as @s[tag=ocelot,scores={ogvz.rclick.custom_model_data=7040}] at @s run function ogvz:zombies/ocelot/steal_mana
execute as @s[tag=ocelot,scores={ogvz.rclick.custom_model_data=7041}] at @s run function ogvz:zombies/ocelot/dash
execute as @s[tag=ocelot,scores={ogvz.rclick.custom_model_data=7042}] at @s run function ogvz:zombies/ocelot/disarm
execute as @s[tag=ocelot,scores={ogvz.rclick.custom_model_data=7043}] at @s run function ogvz:zombies/ocelot/mute
# Chicken Nugget (705x)
execute as @s[tag=chicken_nugget,scores={ogvz.rclick.custom_model_data=7050}] at @s run function ogvz:zombies/chicken_nugget/egg_barrage
execute as @s[tag=chicken_nugget,scores={ogvz.rclick.custom_model_data=7051}] at @s run function ogvz:zombies/chicken_nugget/fly
# Snowman (706x)
execute as @s[tag=snowman,scores={ogvz.rclick.custom_model_data=7060}] at @s run function ogvz:zombies/snowman/snowball_barrage
execute as @s[tag=snowman,scores={ogvz.rclick.custom_model_data=7061}] at @s run function ogvz:zombies/snowman/icicle
# Chillager (707x)
execute as @s[tag=chillager,scores={ogvz.rclick.custom_model_data=7070}] at @s run function ogvz:zombies/chillager/invisibility
execute as @s[tag=chillager,scores={ogvz.rclick.custom_model_data=7071}] at @s run function ogvz:zombies/chillager/ice_cube
# Bee (708x)
execute as @s[tag=bee,scores={ogvz.rclick.custom_model_data=7080}] at @s run function ogvz:zombies/bee/honey
execute as @s[tag=bee,scores={ogvz.rclick.custom_model_data=7081}] at @s run function ogvz:zombies/bee/pollen_bomb
# Phantom (709x)
execute as @s[tag=phantom,scores={ogvz.rclick.custom_model_data=7090}] at @s run function ogvz:zombies/phantom/delirium
execute as @s[tag=phantom,scores={ogvz.rclick.custom_model_data=7091}] at @s run function ogvz:zombies/phantom/shrouding_fog
# Blaze (710x)
execute as @s[tag=blaze,scores={ogvz.rclick.custom_model_data=7100}] at @s run function ogvz:zombies/blaze/fireball
execute as @s[tag=blaze,scores={ogvz.rclick.custom_model_data=7101}] at @s run function ogvz:zombies/blaze/fireblast
execute as @s[tag=blaze,scores={ogvz.rclick.custom_model_data=7102}] at @s run function ogvz:zombies/blaze/firefly
# Silverfish (711x)
execute as @s[tag=silverfish,scores={ogvz.rclick.custom_model_data=7110}] at @s run function ogvz:zombies/silverfish/infest
execute as @s[tag=silverfish,scores={ogvz.rclick.custom_model_data=7111}] at @s run function ogvz:zombies/silverfish/roar
# Golem (712x)
execute as @s[tag=golem,scores={ogvz.rclick.custom_model_data=7120}] at @s run function ogvz:zombies/golem/fissure
# Enderman (713x)
execute as @s[tag=enderman,scores={ogvz.rclick.custom_model_data=7130}] at @s run function ogvz:zombies/enderman/teleport
execute as @s[tag=enderman,scores={ogvz.rclick.custom_model_data=7131}] at @s run function ogvz:zombies/enderman/portal_above
execute as @s[tag=enderman,scores={ogvz.rclick.custom_model_data=7132}] at @s run function ogvz:zombies/enderman/portal_below
execute as @s[tag=enderman,scores={ogvz.rclick.custom_model_data=7133}] at @s run function ogvz:zombies/enderman/reinforce

### Zombie nature given abilities (8xxx)


### Other (9xxx)
execute as @s[tag=!dwarves,tag=!zombies,scores={ogvz.rclick.custom_model_data=9000}] at @s run function ogvz:misc/join_game
execute as @s[tag=zombies,scores={ogvz.rclick.custom_model_data=9001}] at @s run function ogvz:zombies/give_discs
execute as @s[tag=zombies,scores={ogvz.rclick.custom_model_data=9002}] at @s run function ogvz:zombies/enderman/portal_teleport

# Remove tags
tag @s remove ogvz.use_mainhand
tag @s remove ogvz.use_offhand