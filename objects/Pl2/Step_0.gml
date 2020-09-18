/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 014E9B13
/// @DnDArgument : "script" "Dash"
/// @DnDArgument : "arg" "2"
/// @DnDSaveInfo : "script" "f3634d8d-0428-45e5-b22b-6c1b017e85a3"
script_execute(Dash, 2);

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 55756BEE
/// @DnDArgument : "key" "vk_up"
var l55756BEE_0;
l55756BEE_0 = keyboard_check(vk_up);
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
/// @DnDArgument : "key" "vk_left"
var l49879DFA_0;
l49879DFA_0 = keyboard_check(vk_left);
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
/// @DnDArgument : "key" "vk_down"
var l2B608FD1_0;
l2B608FD1_0 = keyboard_check(vk_down);
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
/// @DnDArgument : "key" "vk_right"
var l112E4663_0;
l112E4663_0 = keyboard_check(vk_right);
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
/// @DnDArgument : "key" "vk_numpad1"
var l7E47E519_0;
l7E47E519_0 = keyboard_check_pressed(vk_numpad1);
if (l7E47E519_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 539DB39C
	/// @DnDParent : 7E47E519
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "Pl1.is_attacked"
	Pl1.is_attacked = true;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 51E4B39F
/// @DnDArgument : "key" "vk_numpad2"
/// @DnDArgument : "not" "1"
var l51E4B39F_0;
l51E4B39F_0 = keyboard_check(vk_numpad2);
if (!l51E4B39F_0)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
	/// @DnDVersion : 1
	/// @DnDHash : 43AE347E
	/// @DnDParent : 51E4B39F
	image_alpha = 1;

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 650A430A
	/// @DnDParent : 51E4B39F
	/// @DnDArgument : "expr" "is_attacked"
	if(is_attacked)
	{
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 786F193A
		/// @DnDParent : 650A430A
		/// @DnDArgument : "expr" "in_attack_sphere"
		if(in_attack_sphere)
		{
			/// @DnDAction : YoYo Games.Instance Variables.Set_Health
			/// @DnDVersion : 1
			/// @DnDHash : 6CBAA069
			/// @DnDParent : 786F193A
			/// @DnDArgument : "health" "-10"
			/// @DnDArgument : "health_relative" "1"
			if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
			__dnd_health += real(-10);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 19A53D3C
			/// @DnDParent : 786F193A
			/// @DnDArgument : "var" "is_attacked"
			is_attacked = 0;
		
			/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
			/// @DnDVersion : 1
			/// @DnDHash : 3FEF42C4
			/// @DnDParent : 786F193A
			/// @DnDArgument : "msg" "Pl2.__dnd_health"
			show_debug_message(string(Pl2.__dnd_health));
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 35FF9E39
		/// @DnDParent : 650A430A
		else
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7DCE4360
			/// @DnDParent : 35FF9E39
			/// @DnDArgument : "var" "is_attacked"
			is_attacked = 0;
		}
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 04AF62D9
else
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
	/// @DnDVersion : 1
	/// @DnDHash : 761885F4
	/// @DnDParent : 04AF62D9
	/// @DnDArgument : "alpha" "0.6"
	image_alpha = 0.6;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 04579EF5
	/// @DnDParent : 04AF62D9
	/// @DnDArgument : "var" "is_attacked"
	is_attacked = 0;
}