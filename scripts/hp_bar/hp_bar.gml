/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6297F120
/// @DnDArgument : "code" "//argument0 - игрок (1 - первый, 2 - второй)$(13_10)var smooth = 0.1$(13_10)$(13_10)if(argument0 == 1){$(13_10)	player = Pl1$(13_10)	another_player = Pl2$(13_10)	sprites = array_create(5)$(13_10)	sprites[0] = RB4$(13_10)	sprites[1] = RB3$(13_10)	sprites[2] = RB2$(13_10)	sprites[3] = RB1$(13_10)	sprites[4] = RB0$(13_10)} else {$(13_10)	player = Pl2$(13_10)	another_player = Pl1$(13_10)	sprites = array_create(5)$(13_10)	sprites[0] = BB4$(13_10)	sprites[1] = BB3$(13_10)	sprites[2] = BB2$(13_10)	sprites[3] = BB1$(13_10)	sprites[4] = BB0$(13_10)}$(13_10)$(13_10)x = player.x;$(13_10)y = player.y;$(13_10) $(13_10)new_image_angle = point_direction(x, y, another_player.x, another_player.y);$(13_10)delta = (new_image_angle - image_angle) mod 360$(13_10)$(13_10)if (delta > 180) delta -= 360$(13_10)else if (delta < -180) delta += 360$(13_10)$(13_10)image_angle += delta * smooth$(13_10)if(image_angle > 360) image_angle -= 360;$(13_10)if(image_angle < -360) image_angle += 360;$(13_10)$(13_10)"
//argument0 - игрок (1 - первый, 2 - второй)
var smooth = 0.1

if(argument0 == 1){
	player = Pl1
	another_player = Pl2
	sprites = array_create(5)
	sprites[0] = RB4
	sprites[1] = RB3
	sprites[2] = RB2
	sprites[3] = RB1
	sprites[4] = RB0
} else {
	player = Pl2
	another_player = Pl1
	sprites = array_create(5)
	sprites[0] = BB4
	sprites[1] = BB3
	sprites[2] = BB2
	sprites[3] = BB1
	sprites[4] = BB0
}

x = player.x;
y = player.y;
 
new_image_angle = point_direction(x, y, another_player.x, another_player.y);
delta = (new_image_angle - image_angle) mod 360

if (delta > 180) delta -= 360
else if (delta < -180) delta += 360

image_angle += delta * smooth
if(image_angle > 360) image_angle -= 360;
if(image_angle < -360) image_angle += 360;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 02C2C290
/// @DnDArgument : "var" "player.__dnd_health"
/// @DnDArgument : "value" "100"
if(player.__dnd_health == 100)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 4DA9DF67
	/// @DnDParent : 02C2C290
	/// @DnDArgument : "spriteind" "sprites[0]"
	sprite_index = sprites[0];
	image_index = 0;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6049158C
/// @DnDArgument : "var" "player.__dnd_health"
/// @DnDArgument : "value" "75"
if(player.__dnd_health == 75)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 65EB22DD
	/// @DnDParent : 6049158C
	/// @DnDArgument : "spriteind" "sprites[1]"
	sprite_index = sprites[1];
	image_index = 0;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 51154567
/// @DnDArgument : "var" "player.__dnd_health"
/// @DnDArgument : "value" "50"
if(player.__dnd_health == 50)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 580C96EF
	/// @DnDParent : 51154567
	/// @DnDArgument : "spriteind" "sprites[2]"
	sprite_index = sprites[2];
	image_index = 0;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 47B10723
/// @DnDArgument : "var" "player.__dnd_health"
/// @DnDArgument : "value" "25"
if(player.__dnd_health == 25)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 2B465757
	/// @DnDParent : 47B10723
	/// @DnDArgument : "spriteind" "sprites[3]"
	sprite_index = sprites[3];
	image_index = 0;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 49EAF04D
/// @DnDArgument : "var" "player.__dnd_health"
if(player.__dnd_health == 0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 16D3E0FB
	/// @DnDParent : 49EAF04D
	/// @DnDArgument : "spriteind" "sprites[4]"
	sprite_index = sprites[4];
	image_index = 0;
}