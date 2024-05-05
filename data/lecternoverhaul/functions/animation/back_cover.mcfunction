$execute if score @s timer matches -1 run function lecternoverhaul:animation/cover_macros {type:"$(type)",index:17}
$execute if score @s timer matches -2 run function lecternoverhaul:animation/cover_macros {type:"$(type)",index:16}
$execute if score @s timer matches -3 run function lecternoverhaul:animation/cover_macros {type:"$(type)",index:15}
$execute if score @s timer matches -4 run function lecternoverhaul:animation/cover_macros {type:"$(type)",index:14}
$execute if score @s timer matches -5 run function lecternoverhaul:animation/cover_macros {type:"$(type)",index:13}
$execute if score @s timer matches -6 run function lecternoverhaul:animation/cover_macros {type:"$(type)",index:12}
$execute if score @s timer matches -7 run function lecternoverhaul:animation/cover_macros {type:"$(type)",index:11}
$execute if score @s timer matches -8 run function lecternoverhaul:animation/cover_macros {type:"$(type)",index:10}
$execute if score @s timer matches -9 run function lecternoverhaul:animation/cover_macros {type:"$(type)",index:9}
$execute if score @s timer matches -10 run function lecternoverhaul:animation/cover_macros {type:"$(type)",index:8}
$execute if score @s timer matches -11 run function lecternoverhaul:animation/cover_macros {type:"$(type)",index:7}
$execute if score @s timer matches -12 run function lecternoverhaul:animation/cover_macros {type:"$(type)",index:6}
$execute if score @s timer matches -13 run function lecternoverhaul:animation/cover_macros {type:"$(type)",index:5}
$execute if score @s timer matches -14 run function lecternoverhaul:animation/cover_macros {type:"$(type)",index:4}
$execute if score @s timer matches -15 run function lecternoverhaul:animation/cover_macros {type:"$(type)",index:3}
$execute if score @s timer matches -16 run function lecternoverhaul:animation/cover_macros {type:"$(type)",index:2}
$execute if score @s timer matches -17 run function lecternoverhaul:animation/cover_macros {type:"$(type)",index:1}
$execute if score @s timer matches -18 run function lecternoverhaul:animation/cover_macros {type:"$(type)",index:0}

scoreboard players remove @s timer 1
execute if score @s timer matches ..-19 run scoreboard players reset @s timer