/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 28F85F91
/// @DnDArgument : "code" "x = Pl2.x;$(13_10)y = Pl2.y;$(13_10) $(13_10)///image_angle = Pl1.image_angle;$(13_10)image_angle = point_direction(x,y,Pl1.x,Pl1.y);"
x = Pl2.x;
y = Pl2.y;
 
///image_angle = Pl1.image_angle;
image_angle = point_direction(x,y,Pl1.x,Pl1.y);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3BB1189F
/// @DnDArgument : "var" "Pl2.__dnd_health"
/// @DnDArgument : "value" "100"
if(Pl2.__dnd_health == 100)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 238B3AF6
	/// @DnDParent : 3BB1189F
	/// @DnDArgument : "spriteind" "BB4"
	/// @DnDSaveInfo : "spriteind" "b42bbb7f-c4a4-4834-8ad5-839c078d5219"
	sprite_index = BB4;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2464802A
/// @DnDArgument : "var" "Pl2.__dnd_health"
/// @DnDArgument : "value" "75"
if(Pl2.__dnd_health == 75)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 7CD0AE18
	/// @DnDParent : 2464802A
	/// @DnDArgument : "spriteind" "BB3"
	/// @DnDSaveInfo : "spriteind" "f316de2d-c460-46ad-849f-e6c932ed573c"
	sprite_index = BB3;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 250F3569
/// @DnDArgument : "var" "Pl2.__dnd_health"
/// @DnDArgument : "value" "50"
if(Pl2.__dnd_health == 50)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 5D62EA0F
	/// @DnDParent : 250F3569
	/// @DnDArgument : "spriteind" "BB2"
	/// @DnDSaveInfo : "spriteind" "8fc679c5-d0b3-4d2f-8743-7ebee1b5543f"
	sprite_index = BB2;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5DABA2CB
/// @DnDArgument : "var" "Pl2.__dnd_health"
/// @DnDArgument : "value" "25"
if(Pl2.__dnd_health == 25)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 69155D0F
	/// @DnDParent : 5DABA2CB
	/// @DnDArgument : "spriteind" "BB1"
	/// @DnDSaveInfo : "spriteind" "85e6428a-a9ef-4151-8b59-ee270f24b073"
	sprite_index = BB1;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 35C30DA0
/// @DnDArgument : "var" "Pl2.__dnd_health"
if(Pl2.__dnd_health == 0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 5F2F82B8
	/// @DnDParent : 35C30DA0
	/// @DnDArgument : "spriteind" "BB0"
	/// @DnDSaveInfo : "spriteind" "8d231507-8ba4-47a1-97d3-4d7353945722"
	sprite_index = BB0;
	image_index = 0;
}