$data modify entity @s transformation.right_rotation set from storage lecternoverhaul:const book_poses.cover.rotation_$(type)[$(index)]
$data modify entity @s transformation.translation set from storage lecternoverhaul:const book_poses.cover.translation_$(type)[$(index)]
data modify entity @s start_interpolation set value -1