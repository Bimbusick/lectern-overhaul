execute if data entity @e[type=interaction,tag=lectern.book.interact,tag=right,distance=..0.5,limit=1] interaction if score @s interactionCooldown matches 1.. run data remove entity @e[type=interaction,tag=lectern.book.interact,tag=right,distance=..0.5,limit=1] interaction
execute if data entity @e[type=interaction,tag=lectern.book.interact,tag=right,distance=..0.5,limit=1] interaction unless score @s interactionCooldown matches 1.. run function lecternoverhaul:book_core/add_page
execute if data entity @e[type=interaction,tag=lectern.book.interact,tag=left,distance=..0.5,limit=1] interaction if score @s interactionCooldown matches 1.. run data remove entity @e[type=interaction,tag=lectern.book.interact,tag=right,distance=..0.5,limit=1] interaction
execute if data entity @e[type=interaction,tag=lectern.book.interact,tag=left,distance=..0.5,limit=1] interaction unless score @s interactionCooldown matches 1.. run function lecternoverhaul:book_core/remove_page


execute if data entity @e[type=interaction,tag=lectern.book.interact,tag=right,distance=..0.5,limit=1] attack run function lecternoverhaul:book_core/take_book
execute if data entity @e[type=interaction,tag=lectern.book.interact,tag=left,distance=..0.5,limit=1] attack run function lecternoverhaul:book_core/take_book
execute unless block ~ ~-0.5 ~ lectern run function lecternoverhaul:book_core/take_book

execute if block ~ ~-0.5 ~ lectern[has_book=true] run function lecternoverhaul:book_core/drop_book_from_lectern

execute as @e[type=item_display,tag=lectern.book.cover,tag=left,distance=..0.5,limit=1] if score @s timer matches ..-1 run function lecternoverhaul:animation/back_cover {type:"left"}
execute as @e[type=item_display,tag=lectern.book.cover,tag=left,distance=..0.5,limit=1] if score @s timer matches 1.. run function lecternoverhaul:animation/forward_cover {type:"left"}
execute as @e[type=item_display,tag=lectern.book.cover,tag=right,distance=..0.5,limit=1] if score @s timer matches ..-1 run function lecternoverhaul:animation/back_cover {type:"right"}
execute as @e[type=item_display,tag=lectern.book.cover,tag=right,distance=..0.5,limit=1] if score @s timer matches 1.. run function lecternoverhaul:animation/forward_cover {type:"right"}

execute as @e[type=item_display,tag=lectern.book.page,distance=..0.5,limit=1] if score @s timer matches ..-1 run function lecternoverhaul:animation/back_page
execute as @e[type=item_display,tag=lectern.book.page,distance=..0.5,limit=1] if score @s timer matches 1.. run function lecternoverhaul:animation/forward_page

execute as @e[type=text_display,tag=lectern.book.text,distance=..0.5,limit=1] if score @s timer matches 1.. run function lecternoverhaul:animation/text

execute if score @s interactionCooldown matches 1.. run scoreboard players remove @s interactionCooldown 1