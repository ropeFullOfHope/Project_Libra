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
# Comments: Tests for and executes functions from right-clicking a retextured carrot on a stick. Also handles secondary attacks.
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

execute unless entity @s[scores={ogvz.rclick.use=1..}] run return 0

scoreboard players set @s ogvz.rclick.use 0

execute unless items entity @s weapon.* minecraft:carrot_on_a_stick run return 0

execute unless entity @s[scores={ogvz.rclick.cooldown=0}] run return 0

scoreboard players set @s ogvz.rclick.cooldown 5

tag @s add temp.use
execute if items entity @s weapon.mainhand minecraft:carrot_on_a_stick run tag @s add temp.use.mainhand
execute if items entity @s[tag=!temp.use.mainhand] weapon.offhand minecraft:carrot_on_a_stick run tag @s add temp.use.offhand

execute store result score @s[tag=temp.use.mainhand] ogvz.rclick.active_id run data get entity @s SelectedItem.components."minecraft:custom_data".active_id
execute store result score @s[tag=temp.use.offhand] ogvz.rclick.active_id run data get entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data".active_id

### Admin tools (1xxx)


### Discs (2xxx)
# Dwarf discs (20xx)
execute as @s[tag=!ogvz.dwarf.class,tag=ogvz.dwarf,scores={ogvz.rclick.active_id=2000}] at @s run function ogvz:dwarves/disc/builder
execute as @s[tag=!ogvz.dwarf.class,tag=ogvz.dwarf,scores={ogvz.rclick.active_id=2001}] at @s run function ogvz:dwarves/disc/blacksmith
execute as @s[tag=!ogvz.dwarf.class,tag=ogvz.dwarf,scores={ogvz.rclick.active_id=2002}] at @s run function ogvz:dwarves/disc/tailor
execute as @s[tag=!ogvz.dwarf.class,tag=ogvz.dwarf,scores={ogvz.rclick.active_id=2003}] at @s run function ogvz:dwarves/disc/baker
execute as @s[tag=!ogvz.dwarf.class,tag=ogvz.dwarf,scores={ogvz.rclick.active_id=2004}] at @s run function ogvz:dwarves/disc/alchemist
execute as @s[tag=!ogvz.dwarf.class,tag=ogvz.dwarf,scores={ogvz.rclick.active_id=2005}] at @s run function ogvz:dwarves/disc/enchanter
# Zombie discs (21xx)
execute as @s[tag=!ogvz.zombie.class,tag=ogvz.zombie,scores={ogvz.rclick.active_id=2100}] at @s run function ogvz:zombies/disc/zombie
execute as @s[tag=!ogvz.zombie.class,tag=ogvz.zombie,scores={ogvz.rclick.active_id=2101}] at @s run function ogvz:zombies/disc/husk
execute as @s[tag=!ogvz.zombie.class,tag=ogvz.zombie,scores={ogvz.rclick.active_id=2102}] at @s run function ogvz:zombies/disc/vindicator
execute as @s[tag=!ogvz.zombie.class,tag=ogvz.zombie,scores={ogvz.rclick.active_id=2103}] at @s run function ogvz:zombies/disc/drowned
execute as @s[tag=!ogvz.zombie.class,tag=ogvz.zombie,scores={ogvz.rclick.active_id=2104}] at @s run function ogvz:zombies/disc/skeleton
execute as @s[tag=!ogvz.zombie.class,tag=ogvz.zombie,scores={ogvz.rclick.active_id=2105}] at @s run function ogvz:zombies/disc/wither_skeleton
execute as @s[tag=!ogvz.zombie.class,tag=ogvz.zombie,scores={ogvz.rclick.active_id=2106}] at @s run function ogvz:zombies/disc/pillager
execute as @s[tag=!ogvz.zombie.class,tag=ogvz.zombie,scores={ogvz.rclick.active_id=2107}] at @s run function ogvz:zombies/disc/guardian
execute as @s[tag=!ogvz.zombie.class,tag=ogvz.zombie,scores={ogvz.rclick.active_id=2108}] at @s run function ogvz:zombies/disc/creeper
execute as @s[tag=!ogvz.zombie.class,tag=ogvz.zombie,scores={ogvz.rclick.active_id=2109}] at @s run function ogvz:zombies/disc/spider
execute as @s[tag=!ogvz.zombie.class,tag=ogvz.zombie,scores={ogvz.rclick.active_id=2110}] at @s run function ogvz:zombies/disc/wolf
execute as @s[tag=!ogvz.zombie.class,tag=ogvz.zombie,scores={ogvz.rclick.active_id=2111}] at @s run function ogvz:zombies/disc/ocelot
execute as @s[tag=!ogvz.zombie.class,tag=ogvz.zombie,scores={ogvz.rclick.active_id=2112}] at @s run function ogvz:zombies/disc/chicken_nugget
execute as @s[tag=!ogvz.zombie.class,tag=ogvz.zombie,scores={ogvz.rclick.active_id=2113}] at @s run function ogvz:zombies/disc/snowman
execute as @s[tag=!ogvz.zombie.class,tag=ogvz.zombie,scores={ogvz.rclick.active_id=2114}] at @s run function ogvz:zombies/disc/chillager
execute as @s[tag=!ogvz.zombie.class,tag=ogvz.zombie,scores={ogvz.rclick.active_id=2115}] at @s run function ogvz:zombies/disc/bee
execute as @s[tag=!ogvz.zombie.class,tag=ogvz.zombie,scores={ogvz.rclick.active_id=2116}] at @s run function ogvz:zombies/disc/phantom
execute as @s[tag=!ogvz.zombie.class,tag=ogvz.zombie,scores={ogvz.rclick.active_id=2117}] at @s run function ogvz:zombies/disc/blaze
execute as @s[tag=!ogvz.zombie.class,tag=ogvz.zombie,scores={ogvz.rclick.active_id=2118}] at @s run function ogvz:zombies/disc/hoglin
execute as @s[tag=!ogvz.zombie.class,tag=ogvz.zombie,scores={ogvz.rclick.active_id=2119}] at @s run function ogvz:zombies/disc/silverfish
execute as @s[tag=!ogvz.zombie.class,tag=ogvz.zombie,scores={ogvz.rclick.active_id=2120}] at @s run function ogvz:zombies/disc/golem
execute as @s[tag=!ogvz.zombie.class,tag=ogvz.zombie,scores={ogvz.rclick.active_id=2121}] at @s run function ogvz:zombies/disc/enderman
execute as @s[tag=!ogvz.zombie.class,tag=ogvz.zombie,scores={ogvz.rclick.active_id=2122}] at @s run function ogvz:zombies/disc/ghast
execute as @s[tag=!ogvz.zombie.class,tag=ogvz.zombie,scores={ogvz.rclick.active_id=2123}] at @s run function ogvz:zombies/disc/ravager
execute as @s[tag=!ogvz.zombie.class,tag=ogvz.zombie,scores={ogvz.rclick.active_id=2124}] at @s run function ogvz:zombies/disc/johnny

### Dwarf items (3xxx)
# Dwarf books (30xx)
execute as @s[tag=ogvz.dwarf.class.builder,scores={ogvz.rclick.active_id=3000}] at @s run function ogvz:dwarves/item/summoning_book/builder
execute as @s[tag=ogvz.dwarf.class.blacksmith,scores={ogvz.rclick.active_id=3001}] at @s run function ogvz:dwarves/item/summoning_book/blacksmith
execute as @s[tag=ogvz.dwarf.class.tailor,scores={ogvz.rclick.active_id=3002}] at @s run function ogvz:dwarves/item/summoning_book/tailor
execute as @s[tag=ogvz.dwarf.class.baker,scores={ogvz.rclick.active_id=3003}] at @s run function ogvz:dwarves/item/summoning_book/baker
execute as @s[tag=ogvz.dwarf.class.alchemist,scores={ogvz.rclick.active_id=3004}] at @s run function ogvz:dwarves/item/summoning_book/alchemist
execute as @s[tag=ogvz.dwarf.class.enchanter,scores={ogvz.rclick.active_id=3005}] at @s run function ogvz:dwarves/item/summoning_book/enchanter
execute as @s[tag=ogvz.dwarf,scores={ogvz.rclick.active_id=3006}] at @s run function ogvz:dwarves/item/legendary_book
# Dwarf items (31xx)
execute as @s[tag=ogvz.mana,scores={ogvz.rclick.active_id=3100}] at @s run function ogvz:dwarves/item/magic_potion/regeneration
execute as @s[tag=ogvz.mana,scores={ogvz.rclick.active_id=3101}] at @s run function ogvz:dwarves/item/magic_potion/swiftness
execute as @s[tag=ogvz.mana,scores={ogvz.rclick.active_id=3102}] at @s run function ogvz:dwarves/item/magic_potion/strength
execute as @s[tag=ogvz.mana,scores={ogvz.rclick.active_id=3103}] at @s run function ogvz:dwarves/item/magic_potion/leaping
execute as @s[tag=ogvz.mana,scores={ogvz.rclick.active_id=3104}] at @s run function ogvz:dwarves/item/pearl_rod
execute as @s[scores={ogvz.rclick.active_id=3105}] at @s run function ogvz:dwarves/item/water_wand
execute as @s[scores={ogvz.rclick.active_id=3106}] at @s run function ogvz:dwarves/item/fertilizer

### Dwarf hero items (4xxx)
# Dragon Warrior (40xx)
#execute as @s[tag=ogvz.dwarf.class.hero.dragon_warrior,scores={ogvz.rclick.active_id=4001}] at @s run function ogvz:dwarves/hero/items/dragon_warrior/dwarven_ruby
# Wither Warrior (41xx)

# Assassin Slayer (42xx)
execute as @s[tag=ogvz.dwarf.class.hero.assassin_slayer,scores={ogvz.rclick.active_id=4200}] at @s run function ogvz:dwarves/item/hero/assassin_slayer/assassinate
execute as @s[tag=ogvz.dwarf.class.hero.assassin_slayer,scores={ogvz.rclick.active_id=4201}] at @s run function ogvz:dwarves/item/hero/assassin_slayer/invisibility

# Dwarven Guard (43xx)
#execute as @s[tag=ogvz.dwarf.class.hero.dwarven_guard,scores={ogvz.rclick.active_id=4300}] at @s run function ogvz:dwarves/hero/dwarven_guard/elder_guardian_eye

### Dwarf legendary items (5xxx)


### Zombie abilities (7xxx)
# Guardian (700x)
execute as @s[tag=ogvz.zombie.class.skeleton_variant.guardian,scores={ogvz.rclick.active_id=7000}] at @s run function ogvz:zombies/guardian/beam
# Creeper (701x)
execute as @s[tag=ogvz.zombie.class.creeper,scores={ogvz.rclick.active_id=7010}] at @s run function ogvz:zombies/creeper/explode
# Spider (702x)
execute as @s[tag=ogvz.zombie.class.spider,scores={ogvz.rclick.active_id=7020}] at @s run function ogvz:zombies/spider/web
# Wolf (703x)
execute as @s[tag=ogvz.zombie.class.wolf,scores={ogvz.rclick.active_id=7030}] at @s run function ogvz:zombies/wolf/howl
# Ocelot (704x)
execute as @s[tag=ogvz.zombie.class.ocelot,scores={ogvz.rclick.active_id=7040}] at @s run function ogvz:zombies/ocelot/steal_mana
execute as @s[tag=ogvz.zombie.class.ocelot,scores={ogvz.rclick.active_id=7041}] at @s run function ogvz:zombies/ocelot/dash
execute as @s[tag=ogvz.zombie.class.ocelot,scores={ogvz.rclick.active_id=7042}] at @s run function ogvz:zombies/ocelot/disarm
execute as @s[tag=ogvz.zombie.class.ocelot,scores={ogvz.rclick.active_id=7043}] at @s run function ogvz:zombies/ocelot/mute
# Chicken Nugget (705x)
execute as @s[tag=ogvz.zombie.class.chicken_nugget,scores={ogvz.rclick.active_id=7050}] at @s run function ogvz:zombies/chicken_nugget/egg_barrage
execute as @s[tag=ogvz.zombie.class.chicken_nugget,scores={ogvz.rclick.active_id=7051}] at @s run function ogvz:zombies/chicken_nugget/fly
# Snowman (706x)
execute as @s[tag=ogvz.zombie.class.snowman,scores={ogvz.rclick.active_id=7060}] at @s run function ogvz:zombies/snowman/snowball_barrage
execute as @s[tag=ogvz.zombie.class.snowman,scores={ogvz.rclick.active_id=7061}] at @s run function ogvz:zombies/snowman/icicle
# Chillager (707x)
execute as @s[tag=ogvz.zombie.class.chillager,scores={ogvz.rclick.active_id=7070}] at @s run function ogvz:zombies/chillager/invisibility
execute as @s[tag=ogvz.zombie.class.chillager,scores={ogvz.rclick.active_id=7071}] at @s run function ogvz:zombies/chillager/ice_cube
# Bee (708x)
execute as @s[tag=ogvz.zombie.class.bee,scores={ogvz.rclick.active_id=7080}] at @s run function ogvz:zombies/bee/honey
execute as @s[tag=ogvz.zombie.class.bee,scores={ogvz.rclick.active_id=7081}] at @s run function ogvz:zombies/bee/pollen_bomb
# Phantom (709x)
execute as @s[tag=ogvz.zombie.class.phantom,scores={ogvz.rclick.active_id=7090}] at @s run function ogvz:zombies/phantom/delirium
execute as @s[tag=ogvz.zombie.class.phantom,scores={ogvz.rclick.active_id=7091}] at @s run function ogvz:zombies/phantom/shrouding_fog
# Blaze (710x)
execute as @s[tag=ogvz.zombie.class.blaze,scores={ogvz.rclick.active_id=7100}] at @s run function ogvz:zombies/blaze/fireball
execute as @s[tag=ogvz.zombie.class.blaze,scores={ogvz.rclick.active_id=7101}] at @s run function ogvz:zombies/blaze/fireblast
execute as @s[tag=ogvz.zombie.class.blaze,scores={ogvz.rclick.active_id=7102}] at @s run function ogvz:zombies/blaze/firefly
# Silverfish (711x)
execute as @s[tag=ogvz.zombie.class.silverfish,scores={ogvz.rclick.active_id=7110}] at @s run function ogvz:zombies/silverfish/infest
execute as @s[tag=ogvz.zombie.class.silverfish,scores={ogvz.rclick.active_id=7111}] at @s run function ogvz:zombies/silverfish/roar
# Golem (712x)
execute as @s[tag=ogvz.zombie.class.golem,scores={ogvz.rclick.active_id=7120}] at @s run function ogvz:zombies/golem/fissure
# Enderman (713x)
execute as @s[tag=ogvz.zombie.class.enderman,scores={ogvz.rclick.active_id=7130}] at @s run function ogvz:zombies/enderman/teleport
execute as @s[tag=ogvz.zombie.class.enderman,scores={ogvz.rclick.active_id=7131}] at @s run function ogvz:zombies/enderman/portal_above
execute as @s[tag=ogvz.zombie.class.enderman,scores={ogvz.rclick.active_id=7132}] at @s run function ogvz:zombies/enderman/portal_below
execute as @s[tag=ogvz.zombie.class.enderman,scores={ogvz.rclick.active_id=7133}] at @s run function ogvz:zombies/enderman/reinforce

### Zombie nature given abilities (8xxx)


### Other (9xxx)
execute as @s[tag=!ogvz.joined,scores={ogvz.rclick.active_id=9000}] at @s run function ogvz:misc/join_game
execute as @s[tag=ogvz.zombie,scores={ogvz.rclick.active_id=9001}] at @s run function ogvz:zombies/give_discs
execute as @s[tag=ogvz.zombie,scores={ogvz.rclick.active_id=9002}] at @s run function ogvz:zombies/enderman/portal_teleport

# Remove tags
tag @s remove temp.use
tag @s remove temp.use.mainhand
tag @s remove temp.use.offhand