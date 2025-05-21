summon item ~ ~ ~ {Item:{id:"minecraft:stone",count:1},Tags:["set.item"]}
data modify entity @e[type=item,distance=..0.25,tag=set.item,limit=1] Item set from entity @s data.book_item
tag @e[type=item,distance=..0.25,tag=set.item,limit=1] remove set.item

kill @e[type=interaction,tag=lectern.book.interact,tag=left,distance=..0.5,limit=1]
kill @e[type=interaction,tag=lectern.book.interact,tag=right,distance=..0.5,limit=1]
kill @e[type=item_display,tag=lectern.book.cover,tag=left,distance=..0.5,limit=1]
kill @e[type=item_display,tag=lectern.book.cover,tag=right,distance=..0.5,limit=1]
kill @e[type=text_display,tag=lectern.book.text,distance=..0.5,limit=1]
kill @e[type=item_display,tag=lectern.book.page,distance=..0.5]
kill @s