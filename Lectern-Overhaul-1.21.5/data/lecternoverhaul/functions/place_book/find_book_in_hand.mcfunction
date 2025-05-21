execute if predicate lecternoverhaul:items/book_mainhand run item replace entity 0-0-0-0-0 container.0 from entity @s weapon.mainhand
execute unless predicate lecternoverhaul:items/book_mainhand if predicate lecternoverhaul:items/book_offhand run item replace entity 0-0-0-0-0 container.0 from entity @s weapon.offhand
data modify entity 0-0-0-0-0 item.count set value 1

data modify entity @e[type=marker,tag=lectern.book,tag=set.data,distance=..0.5,limit=1] data.book_item set from entity 0-0-0-0-0 item
data modify entity @e[type=marker,tag=lectern.book,tag=set.data,distance=..0.5,limit=1] data.book_pages set from entity 0-0-0-0-0 item.components."minecraft:written_book_content".pages
execute as @e[type=marker,tag=lectern.book,tag=set.data,distance=..1.5,limit=1] store result score @s pageMax run data get entity @s data.book_pages

function lecternoverhaul:place_book/add_zero_page
data modify entity @e[type=marker,tag=lectern.book,tag=set.data,distance=..1.5,limit=1] data.book_pages append value {raw:'""'}

execute unless predicate lecternoverhaul:items/book_mainhand if predicate lecternoverhaul:items/book_offhand run item modify entity @s weapon.offhand lecternoverhaul:remove_1_book
execute if predicate lecternoverhaul:items/book_mainhand run item modify entity @s weapon.mainhand lecternoverhaul:remove_1_book