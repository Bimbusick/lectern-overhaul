$data modify entity @s transformation.translation set from storage lecternoverhaul:const book_poses.text.translation_$(type)[$(index_translation)]
$data modify entity @s transformation.scale set from storage lecternoverhaul:const book_poses.text.scale_$(type)[$(index_translation)]
$data modify entity @s text_opacity set from storage lecternoverhaul:const book_poses.text.opaque[$(index_color)]
$data modify entity @s background set from storage lecternoverhaul:const book_poses.text.background[$(index_color)]
data modify entity @s start_interpolation set value -1