$data modify entity @s transformation.right_rotation set from storage lecternoverhaul:const book_poses.page.rotation[$(index)]
$data modify entity @s transformation.translation set from storage lecternoverhaul:const book_poses.page.translation[$(index)]
data modify entity @s start_interpolation set value -1