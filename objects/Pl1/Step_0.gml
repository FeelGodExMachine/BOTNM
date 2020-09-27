/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 014E9B13
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "script" "dashInitiator"
/// @DnDArgument : "arg" "1"
/// @DnDSaveInfo : "script" "3263a186-68d8-454c-b52e-9dbc8ba5abe1"
var script_execute(dashInitiator, 1);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 30629F90
/// @DnDArgument : "var" "block_disable"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "100"
if(block_disable <= 100)
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 55756BEE
	/// @DnDParent : 30629F90
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
	/// @DnDParent : 30629F90
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
	/// @DnDParent : 30629F90
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
	/// @DnDParent : 30629F90
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
			/// @DnDArgument : "health" "-25"
			/// @DnDArgument : "health_relative" "1"
			if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
			__dnd_health += real(-25);
		
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
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 7B781081
	/// @DnDParent : 50F267F9
	/// @DnDArgument : "key" "ord("N")"
	var l7B781081_0;
	l7B781081_0 = keyboard_check(ord("N"));
	if (l7B781081_0)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 23A40547
		/// @DnDParent : 7B781081
		/// @DnDArgument : "var" "block_disable"
		if(block_disable == 0)
		{
			/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
			/// @DnDVersion : 1
			/// @DnDHash : 778C5A60
			/// @DnDParent : 23A40547
			/// @DnDArgument : "alpha" "0.6"
			image_alpha = 0.6;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7EA558E9
			/// @DnDParent : 23A40547
			/// @DnDArgument : "var" "is_attacked"
			is_attacked = 0;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 21EAD500
		/// @DnDParent : 7B781081
		else
		{
			/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
			/// @DnDVersion : 1
			/// @DnDHash : 7AEA1A74
			/// @DnDParent : 21EAD500
			image_alpha = 1;
		}
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 5C81E96D
		/// @DnDParent : 7B781081
		/// @DnDArgument : "expr" "is_attacked"
		if(is_attacked)
		{
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 1A644DB1
			/// @DnDParent : 5C81E96D
			/// @DnDArgument : "expr" "in_attack_sphere"
			if(in_attack_sphere)
			{
				/// @DnDAction : YoYo Games.Instance Variables.Set_Health
				/// @DnDVersion : 1
				/// @DnDHash : 5036F7C2
				/// @DnDParent : 1A644DB1
				/// @DnDArgument : "health" "-25"
				/// @DnDArgument : "health_relative" "1"
				if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
				__dnd_health += real(-25);
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 57B69480
				/// @DnDParent : 1A644DB1
				/// @DnDArgument : "var" "is_attacked"
				is_attacked = 0;
			
				/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
				/// @DnDVersion : 1
				/// @DnDHash : 239ACCD8
				/// @DnDParent : 1A644DB1
				/// @DnDArgument : "msg" "Pl2.__dnd_health"
				show_debug_message(string(Pl2.__dnd_health));
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 7591F6CD
			/// @DnDParent : 5C81E96D
			else
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 72978DFB
				/// @DnDParent : 7591F6CD
				/// @DnDArgument : "var" "is_attacked"
				is_attacked = 0;
			}
		}
	}
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 2F463C30
/// @DnDArgument : "key" "ord("B")"
var l2F463C30_0;
l2F463C30_0 = keyboard_check_pressed(ord("B"));
if (l2F463C30_0)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1728393A
	/// @DnDParent : 2F463C30
	/// @DnDArgument : "xpos" "Pl1.x"
	/// @DnDArgument : "ypos" "Pl1.y"
	/// @DnDArgument : "objectid" "Sword_1"
	/// @DnDSaveInfo : "objectid" "ed8318e9-c941-47a2-92ac-3a30ef9488e1"
	instance_create_layer(Pl1.x, Pl1.y, "Instances", Sword_1);
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 2C3C0DF6
/// @DnDArgument : "key" "ord("M")"
var l2C3C0DF6_0;
l2C3C0DF6_0 = keyboard_check_pressed(ord("M"));
if (l2C3C0DF6_0)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 21DE0341
	/// @DnDParent : 2C3C0DF6
	/// @DnDArgument : "expr" "Pl2.in_attack_sphere"
	if(Pl2.in_attack_sphere)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0C752DFB
		/// @DnDParent : 21DE0341
		/// @DnDArgument : "expr" "150"
		/// @DnDArgument : "var" "Pl2.block_disable"
		Pl2.block_disable = 150;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 62B66DBB
/// @DnDArgument : "var" "block_disable"
/// @DnDArgument : "not" "1"
if(!(block_disable == 0))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7B1E2743
	/// @DnDParent : 62B66DBB
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "block_disable"
	block_disable += -1;
}

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 5F73D82D
/// @DnDArgument : "msg" "block_disable"
show_debug_message(string(block_disable));