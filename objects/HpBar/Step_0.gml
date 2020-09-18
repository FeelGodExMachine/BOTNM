/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 28F85F91
/// @DnDArgument : "code" "x = Pl1.x;$(13_10)y = Pl1.y;$(13_10) $(13_10)///image_angle = Pl1.image_angle;$(13_10)image_angle = point_direction(x,y,Pl2.x,Pl2.y);"
x = Pl1.x;
y = Pl1.y;
 
///image_angle = Pl1.image_angle;
image_angle = point_direction(x,y,Pl2.x,Pl2.y);