execute if score @s page matches 1 run scoreboard players set @e[type=item_display,tag=lectern.book.cover,tag=left,distance=..0.5,limit=1] timer 1
execute if score @s page > @s pageMax run scoreboard players set @e[type=item_display,tag=lectern.book.cover,tag=right,distance=..0.5,limit=1] timer 1

execute if score @s page matches 1.. run function lecternoverhaul:book_core/remove_page2
data remove entity @e[type=interaction,tag=lectern.book.interact,tag=left,distance=..0.5,limit=1] interaction