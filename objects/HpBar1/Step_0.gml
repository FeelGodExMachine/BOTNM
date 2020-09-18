/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 28F85F91
/// @DnDArgument : "code" "x = Pl2.x;$(13_10)y = Pl2.y;$(13_10) $(13_10)///image_angle = Pl1.image_angle;$(13_10)image_angle = point_direction(x,y,Pl1.x,Pl1.y);"
x = Pl2.x;
y = Pl2.y;
 
///image_angle = Pl1.image_angle;
image_angle = point_direction(x,y,Pl1.x,Pl1.y);