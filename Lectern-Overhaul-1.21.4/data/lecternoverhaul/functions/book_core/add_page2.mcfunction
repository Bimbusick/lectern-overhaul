execute if score @s page matches 1.. if score @s page < @s pageMax run function lecternoverhaul:book_core/add_page3 with entity @s data

execute if score @s page >= @s pageMax run playsound minecraft:block.wool.step block @a ~ ~ ~ 0.225 0.1
execute if score @s page matches ..1 run playsound minecraft:block.wool.step block @a ~ ~ ~ 0.225 0.1

scoreboard players set @e[type=text_display,tag=lectern.book.text,distance=..0.5,limit=2] timer 1
scoreboard players add @s page 1
scoreboard players set @s interactionCooldown 23