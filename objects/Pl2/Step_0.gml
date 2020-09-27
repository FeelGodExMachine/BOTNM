/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 014E9B13
/// @DnDArgument : "script" "dashInitiator"
/// @DnDArgument : "arg" "2"
/// @DnDSaveInfo : "script" "3263a186-68d8-454c-b52e-9dbc8ba5abe1"
script_execute(dashInitiator, 2);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0777E7BD
/// @DnDArgument : "var" "block_disable"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "100"
if(block_disable <= 100)
{

}

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
/// @DnDArgument : "key" "vk_home"
var l7E47E519_0;
l7E47E519_0 = keyboard_check_pressed(vk_home);
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
/// @DnDArgument : "key" "vk_end"
var l51E4B39F_0;
l51E4B39F_0 = keyboard_check(vk_end);
if (l51E4B39F_0)
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
			/// @DnDArgument : "health" "-25"
			/// @DnDArgument : "health_relative" "1"
			if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
			__dnd_health += real(-25);
		
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
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 44F0917D
	/// @DnDParent : 04AF62D9
	/// @DnDArgument : "key" "vk_end"
	var l44F0917D_0;
	l44F0917D_0 = keyboard_check(vk_end);
	if (l44F0917D_0)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4602A522
		/// @DnDParent : 44F0917D
		/// @DnDArgument : "var" "block_disable"
		if(block_disable == 0)
		{
			/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
			/// @DnDVersion : 1
			/// @DnDHash : 3D3E4C21
			/// @DnDParent : 4602A522
			/// @DnDArgument : "alpha" "0.6"
			image_alpha = 0.6;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 78EF45AB
			/// @DnDParent : 4602A522
			/// @DnDArgument : "var" "is_attacked"
			is_attacked = 0;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 0135AED9
		/// @DnDParent : 44F0917D
		else
		{
			/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
			/// @DnDVersion : 1
			/// @DnDHash : 42878C6F
			/// @DnDParent : 0135AED9
			image_alpha = 1;
		}
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 3EC41A92
		/// @DnDParent : 44F0917D
		/// @DnDArgument : "expr" "is_attacked"
		if(is_attacked)
		{
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 40A24511
			/// @DnDParent : 3EC41A92
			/// @DnDArgument : "expr" "in_attack_sphere"
			if(in_attack_sphere)
			{
				/// @DnDAction : YoYo Games.Instance Variables.Set_Health
				/// @DnDVersion : 1
				/// @DnDHash : 4BBD7A9A
				/// @DnDParent : 40A24511
				/// @DnDArgument : "health" "-25"
				/// @DnDArgument : "health_relative" "1"
				if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
				__dnd_health += real(-25);
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 2F06B3BF
				/// @DnDParent : 40A24511
				/// @DnDArgument : "var" "is_attacked"
				is_attacked = 0;
			
				/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
				/// @DnDVersion : 1
				/// @DnDHash : 19B7A4F3
				/// @DnDParent : 40A24511
				/// @DnDArgument : "msg" "Pl2.__dnd_health"
				show_debug_message(string(Pl2.__dnd_health));
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 6CDFFC8A
			/// @DnDParent : 3EC41A92
			else
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 51F5B7A4
				/// @DnDParent : 6CDFFC8A
				/// @DnDArgument : "var" "is_attacked"
				is_attacked = 0;
			}
		}
	}
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 795A1719
/// @DnDArgument : "key" "vk_numpad3"
var l795A1719_0;
l795A1719_0 = keyboard_check_pressed(vk_numpad3);
if (l795A1719_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 54983DB7
	/// @DnDParent : 795A1719
	/// @DnDArgument : "expr" "150"
	/// @DnDArgument : "var" "Pl1.block_disable"
	Pl1.block_disable = 150;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4D33B6BE
/// @DnDArgument : "var" "block_disable"
/// @DnDArgument : "not" "1"
if(!(block_disable == 0))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 38587B3F
	/// @DnDParent : 4D33B6BE
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "block_disable"
	block_disable += -1;
}