#book logic
execute as @a at @s positioned ~ ~ ~ as @e[type=text_display,tag=lectern_overhaul.book.root,distance=..256] at @s run function lectern_overhaul:book_logic/tick

#update books from older version of datapack
execute as @e[type=marker,tag=lectern.book] at @s run function lectern_overhaul:update_to_new/init

#settings
execute as @a[tag=!lectern_overhaul.player.set_default_settings] run function lectern_overhaul:settings/default
execute as @a if score @s lectern_overhaul.set_settings matches -1099..-1001 run function lectern_overhaul:settings/chat_settings/update
execute as @a if score @s lectern_overhaul.set_settings matches 1.. run function lectern_overhaul:settings/set

#warning about resource pack
execute as @a[predicate=!lectern_overhaul:warning_disabled] unless score @s lectern_overhaul.player.warning_timer matches 20.. run function lectern_overhaul:warning/tick
execute as @a[predicate=!lectern_overhaul:warning_disabled,scores={lectern_overhaul.player.left_game=1..}] run function lectern_overhaul:warning/reset_timer

scoreboard players enable @a lectern_overhaul.set_settings
scoreboard players enable @a lectern_overhaul.disable_warning