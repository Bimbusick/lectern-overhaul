#text animations when one-page mode or two-page mode and it's only one page/cover page needs to be displayed
execute if score @s lectern_overhaul.settings.mode matches 1 if score @s lectern_overhaul.animation_timer matches -2147483648..2147483647 run function lectern_overhaul:animations/text/one_page/init
execute unless score @s lectern_overhaul.settings.animations_speed matches 2 if score @s lectern_overhaul.settings.mode matches 2 if score @s lectern_overhaul.page matches 2 if score @s lectern_overhaul.previous_page matches 0 if score @s lectern_overhaul.animation_timer matches ..-2 run function lectern_overhaul:animations/text/one_page/init
execute unless score @s lectern_overhaul.settings.animations_speed matches 2 if score @s lectern_overhaul.settings.mode matches 2 if score @s lectern_overhaul.page matches 0 if score @s lectern_overhaul.animation_timer matches 0.. run function lectern_overhaul:animations/text/one_page/init
execute unless score @s lectern_overhaul.settings.animations_speed matches 2 if score @s lectern_overhaul.settings.mode matches 2 if score @s lectern_overhaul.left_page = @s lectern_overhaul.page_max if score @s lectern_overhaul.animation_timer matches 0.. run function lectern_overhaul:animations/text/one_page/init
execute unless score @s lectern_overhaul.settings.animations_speed matches 2 if score @s lectern_overhaul.settings.mode matches 2 if score @s lectern_overhaul.previous_page > @s lectern_overhaul.page_max if score @s lectern_overhaul.animation_timer matches ..-2 run function lectern_overhaul:animations/text/one_page/init

#text animations for two-page mode
execute unless entity @s[tag=lectern_overhaul.book.no_two_page_mode_logic] if score @s lectern_overhaul.settings.mode matches 2 if score @s lectern_overhaul.animation_timer matches -2147483648..2147483647 run function lectern_overhaul:animations/text/two_pages/init

tag @s[tag=lectern_overhaul.book.no_two_page_mode_logic] remove lectern_overhaul.book.no_two_page_mode_logic

#page and covers animations
scoreboard players operation #SPEED lectern_overhaul.settings.animations_speed = @s lectern_overhaul.settings.animations_speed

execute as @e[type=item_display,tag=lectern_overhaul.book.page,distance=..0.1,limit=1] if score @s lectern_overhaul.animation_timer matches -2147483648..2147483647 run function lectern_overhaul:animations/page/init
execute as @e[type=item_display,tag=lectern_overhaul.book.left_cover,distance=..0.1,limit=1] if score @s lectern_overhaul.animation_timer matches -2147483648..2147483647 run function lectern_overhaul:animations/left_cover/init
execute as @e[type=item_display,tag=lectern_overhaul.book.right_cover,distance=..0.1,limit=1] if score @s lectern_overhaul.animation_timer matches -2147483648..2147483647 run function lectern_overhaul:animations/right_cover/init

#book destroying
execute if block ~ ~-0.5 ~ lectern[has_book=true] run function lectern_overhaul:book_logic/replace_lectern with entity @s data
execute unless block ~ ~-0.5 ~ lectern run function lectern_overhaul:book_logic/kill with entity @s data
execute positioned ~-0.5 ~ ~-0.5 if entity @e[type=interaction,tag=lectern_overhaul.book.interact,dx=0,dy=0,dz=0,nbt={attack:{}}] positioned ~0.5 ~ ~0.5 run function lectern_overhaul:book_logic/kill with entity @s data

#turning page logic
execute positioned ~-0.5 ~ ~-0.5 if entity @e[type=interaction,tag=lectern_overhaul.book.interact,dx=0,dy=0,dz=0,nbt={interaction:{}}] if score @s lectern_overhaul.settings.mode matches 1 run function lectern_overhaul:book_logic/turn_page/one_page/init
execute positioned ~-0.5 ~ ~-0.5 if entity @e[type=interaction,tag=lectern_overhaul.book.interact,dx=0,dy=0,dz=0,nbt={interaction:{}}] if score @s lectern_overhaul.settings.mode matches 2 run function lectern_overhaul:book_logic/turn_page/two_pages/init