data modify storage lecternoverhaul:temp add_page.author set from entity 0-0-0-0-0 item.components."minecraft:written_book_content".author
data modify storage lecternoverhaul:temp add_page.title set from entity 0-0-0-0-0 item.components."minecraft:written_book_content".title.raw
function lecternoverhaul:place_book/add_zero_page_macros with storage lecternoverhaul:temp add_page
data remove storage lecternoverhaul:temp add_page

scoreboard players set @e[type=text_display,tag=lectern.book.text,distance=..0.5,limit=1] timer 11