/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 28F85F91
/// @DnDArgument : "code" "x = Pl1.x;$(13_10)y = Pl1.y;$(13_10) $(13_10)///image_angle = Pl1.image_angle;$(13_10)image_angle = point_direction(x,y,Pl2.x,Pl2.y);$(13_10)$(13_10)"
x = Pl1.x;
y = Pl1.y;
 
///image_angle = Pl1.image_angle;
image_angle = point_direction(x,y,Pl2.x,Pl2.y);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3DF8D5A6
/// @DnDArgument : "var" "Pl1.__dnd_health"
/// @DnDArgument : "value" "100"
if(Pl1.__dnd_health == 100)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 0264137A
	/// @DnDParent : 3DF8D5A6
	/// @DnDArgument : "spriteind" "RB4"
	/// @DnDSaveInfo : "spriteind" "bcbdf681-22f8-486d-9f27-9cd33d85cb33"
	sprite_index = RB4;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6EA0A3DA
/// @DnDArgument : "var" "Pl1.__dnd_health"
/// @DnDArgument : "value" "75"
if(Pl1.__dnd_health == 75)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 6A916463
	/// @DnDParent : 6EA0A3DA
	/// @DnDArgument : "spriteind" "RB3"
	/// @DnDSaveInfo : "spriteind" "2247dd14-ba57-40e3-9f7f-78eae42ccabd"
	sprite_index = RB3;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1FA876F1
/// @DnDArgument : "var" "Pl1.__dnd_health"
/// @DnDArgument : "value" "50"
if(Pl1.__dnd_health == 50)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 3EFDE432
	/// @DnDParent : 1FA876F1
	/// @DnDArgument : "spriteind" "RB2"
	/// @DnDSaveInfo : "spriteind" "03927c89-6d7c-44c7-86c8-da5b7f57803a"
	sprite_index = RB2;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1728B06F
/// @DnDArgument : "var" "Pl1.__dnd_health"
/// @DnDArgument : "value" "25"
if(Pl1.__dnd_health == 25)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 5DF7A8B1
	/// @DnDParent : 1728B06F
	/// @DnDArgument : "spriteind" "RB1"
	/// @DnDSaveInfo : "spriteind" "d13068bd-26f6-4a9b-adde-39186954ed80"
	sprite_index = RB1;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 16CAC0F1
/// @DnDArgument : "var" "Pl1.__dnd_health"
if(Pl1.__dnd_health == 0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 35FE90AB
	/// @DnDParent : 16CAC0F1
	/// @DnDArgument : "spriteind" "RB0"
	/// @DnDSaveInfo : "spriteind" "867983c2-f8b0-46ab-ab86-fa50e1edd202"
	sprite_index = RB0;
	image_index = 0;
}