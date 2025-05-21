execute if score @s page matches 0 run scoreboard players set @e[type=item_display,tag=lectern.book.cover,tag=left,distance=..0.5,limit=1] timer -1
execute if score @s page = @s pageMax run scoreboard players set @e[type=item_display,tag=lectern.book.cover,tag=right,distance=..0.5,limit=1] timer -1

execute if score @s page <= @s pageMax run function lecternoverhaul:book_core/add_page2
data remove entity @e[type=interaction,tag=lectern.book.interact,tag=right,distance=..0.5,limit=1] interaction