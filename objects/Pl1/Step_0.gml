/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 014E9B13
/// @DnDArgument : "script" "Dash"
/// @DnDArgument : "arg" "1"
/// @DnDSaveInfo : "script" "f3634d8d-0428-45e5-b22b-6c1b017e85a3"
script_execute(Dash, 1);

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 55756BEE
/// @DnDArgument : "key" "ord("W")"
var l55756BEE_0;
l55756BEE_0 = keyboard_check(ord("W"));
if (l55756BEE_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3990EA72
	/// @DnDParent : 55756BEE
	/// @DnDArgument : "expr" "-maximum_speed"
	/// @DnDArgument : "var" "y_speed"
	y_speed = -maximum_speed;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 49879DFA
/// @DnDArgument : "key" "ord("A")"
var l49879DFA_0;
l49879DFA_0 = keyboard_check(ord("A"));
if (l49879DFA_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0C7A5C24
	/// @DnDParent : 49879DFA
	/// @DnDArgument : "expr" "-maximum_speed"
	/// @DnDArgument : "var" "x_speed"
	x_speed = -maximum_speed;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 2B608FD1
/// @DnDArgument : "key" "ord("S")"
var l2B608FD1_0;
l2B608FD1_0 = keyboard_check(ord("S"));
if (l2B608FD1_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 575F06D5
	/// @DnDParent : 2B608FD1
	/// @DnDArgument : "expr" "maximum_speed"
	/// @DnDArgument : "var" "y_speed"
	y_speed = maximum_speed;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 112E4663
/// @DnDArgument : "key" "ord("D")"
var l112E4663_0;
l112E4663_0 = keyboard_check(ord("D"));
if (l112E4663_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 11C60880
	/// @DnDParent : 112E4663
	/// @DnDArgument : "expr" "maximum_speed"
	/// @DnDArgument : "var" "x_speed"
	x_speed = maximum_speed;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5A15E4F8
/// @DnDArgument : "expr" "x_speed"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "x"
x += x_speed;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5704876A
/// @DnDArgument : "expr" "y_speed"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "y"
y += y_speed;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1ABDABBA
/// @DnDArgument : "expr" "x_speed * ostanovka"
/// @DnDArgument : "var" "x_speed"
x_speed = x_speed * ostanovka;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7055FF36
/// @DnDArgument : "expr" " y_speed * ostanovka"
/// @DnDArgument : "var" "y_speed"
y_speed =  y_speed * ostanovka;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0DCD1E35
/// @DnDDisabled : 1
/// @DnDArgument : "code" "image_angle = point_direction(x,y,Pl2.x,Pl2.y);$(13_10)$(13_10)"


/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 7E47E519
/// @DnDArgument : "key" "ord("B")"
var l7E47E519_0;
l7E47E519_0 = keyboard_check_pressed(ord("B"));
if (l7E47E519_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 539DB39C
	/// @DnDParent : 7E47E519
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "Pl2.is_attacked"
	Pl2.is_attacked = true;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 1C622CDE
/// @DnDArgument : "key" "ord("N")"
/// @DnDArgument : "not" "1"
var l1C622CDE_0;
l1C622CDE_0 = keyboard_check(ord("N"));
if (!l1C622CDE_0)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
	/// @DnDVersion : 1
	/// @DnDHash : 3D35D883
	/// @DnDParent : 1C622CDE
	image_alpha = 1;

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 1A7FF67E
	/// @DnDParent : 1C622CDE
	/// @DnDArgument : "expr" "is_attacked"
	if(is_attacked)
	{
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 756DD4AA
		/// @DnDParent : 1A7FF67E
		/// @DnDArgument : "expr" "in_attack_sphere"
		if(in_attack_sphere)
		{
			/// @DnDAction : YoYo Games.Instance Variables.Set_Health
			/// @DnDVersion : 1
			/// @DnDHash : 32E9EBFE
			/// @DnDParent : 756DD4AA
			/// @DnDArgument : "health" "-10"
			/// @DnDArgument : "health_relative" "1"
			if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
			__dnd_health += real(-10);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 607703FB
			/// @DnDParent : 756DD4AA
			/// @DnDArgument : "var" "is_attacked"
			is_attacked = 0;
		
			/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
			/// @DnDVersion : 1
			/// @DnDHash : 47124A9A
			/// @DnDParent : 756DD4AA
			/// @DnDArgument : "msg" "Pl1.__dnd_health"
			show_debug_message(string(Pl1.__dnd_health));
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 7C74063E
		/// @DnDParent : 1A7FF67E
		else
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 27B278A0
			/// @DnDParent : 7C74063E
			/// @DnDArgument : "var" "is_attacked"
			is_attacked = 0;
		}
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 50F267F9
else
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
	/// @DnDVersion : 1
	/// @DnDHash : 7D1DEF50
	/// @DnDParent : 50F267F9
	/// @DnDArgument : "alpha" "0.6"
	image_alpha = 0.6;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4D26FDB7
	/// @DnDParent : 50F267F9
	/// @DnDArgument : "var" "is_attacked"
	is_attacked = 0;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7A447ECE
variable = 0;