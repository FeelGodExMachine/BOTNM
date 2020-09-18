/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 52442706
/// @DnDInput : 2
/// @DnDArgument : "expr" "Pl1.x"
/// @DnDArgument : "expr_1" "Pl1.y"
/// @DnDArgument : "var" "x"
/// @DnDArgument : "var_1" "y"
x = Pl1.x;
y = Pl1.y;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 79C7DC37
/// @DnDArgument : "expr" "place_meeting(x,y,Pl2)"
if(place_meeting(x,y,Pl2))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 59C51A2A
	/// @DnDParent : 79C7DC37
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "Pl2.in_attack_sphere"
	Pl2.in_attack_sphere = 1;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 2F2C7840
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 464CD2FA
	/// @DnDParent : 2F2C7840
	/// @DnDArgument : "var" "Pl2.in_attack_sphere"
	Pl2.in_attack_sphere = 0;
}