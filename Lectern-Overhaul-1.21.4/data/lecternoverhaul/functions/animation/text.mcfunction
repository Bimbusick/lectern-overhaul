execute if score @s timer matches 1 run function lecternoverhaul:animation/text_macros {type:"down",index_translation:0,index_color:9}
execute if score @s timer matches 2 run function lecternoverhaul:animation/text_macros {type:"down",index_translation:1,index_color:8}
execute if score @s timer matches 3 run function lecternoverhaul:animation/text_macros {type:"down",index_translation:2,index_color:7}
execute if score @s timer matches 4 run function lecternoverhaul:animation/text_macros {type:"down",index_translation:3,index_color:6}
execute if score @s timer matches 5 run function lecternoverhaul:animation/text_macros {type:"down",index_translation:4,index_color:5}
execute if score @s timer matches 6 run function lecternoverhaul:animation/text_macros {type:"down",index_translation:5,index_color:4}
execute if score @s timer matches 7 run function lecternoverhaul:animation/text_macros {type:"down",index_translation:6,index_color:3}
execute if score @s timer matches 8 run function lecternoverhaul:animation/text_macros {type:"down",index_translation:7,index_color:2}
execute if score @s timer matches 9 run function lecternoverhaul:animation/text_macros {type:"down",index_translation:8,index_color:1}
execute if score @s timer matches 10 run function lecternoverhaul:animation/text_macros {type:"down",index_translation:9,index_color:0}
execute if score @s timer matches 11 run function lecternoverhaul:animation/set_text
execute if score @s timer matches 11 run function lecternoverhaul:animation/text_macros {type:"up",index_translation:0,index_color:1}
execute if score @s timer matches 12 run function lecternoverhaul:animation/text_macros {type:"up",index_translation:1,index_color:2}
execute if score @s timer matches 13 run function lecternoverhaul:animation/text_macros {type:"up",index_translation:2,index_color:3}
execute if score @s timer matches 14 run function lecternoverhaul:animation/text_macros {type:"up",index_translation:3,index_color:4}
execute if score @s timer matches 15 run function lecternoverhaul:animation/text_macros {type:"up",index_translation:4,index_color:5}
execute if score @s timer matches 16 run function lecternoverhaul:animation/text_macros {type:"up",index_translation:5,index_color:6}
execute if score @s timer matches 17 run function lecternoverhaul:animation/text_macros {type:"up",index_translation:6,index_color:7}
execute if score @s timer matches 18 run function lecternoverhaul:animation/text_macros {type:"up",index_translation:7,index_color:8}
execute if score @s timer matches 19 run function lecternoverhaul:animation/text_macros {type:"up",index_translation:8,index_color:9}
execute if score @s timer matches 20 run function lecternoverhaul:animation/text_macros {type:"up",index_translation:9,index_color:10}

scoreboard players add @s timer 1
execute if score @s timer matches 21.. run scoreboard players reset @s timer