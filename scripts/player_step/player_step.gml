/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1B8857C0
/// @DnDArgument : "code" "//argument0 - игрок (1 - первый, 2 - второй)$(13_10)$(13_10)if (argument0 == 1) {$(13_10)	key_up = ord("W")$(13_10)	key_left = ord("A")$(13_10)	key_down = ord("S")$(13_10)	key_right = ord("D")$(13_10)	key_attack = ord("B")$(13_10)	key_block = ord("N")$(13_10)	key_destroy_block = ord("M")$(13_10)	another_player = Pl2$(13_10)} else {$(13_10)	key_up = vk_up$(13_10)	key_left = vk_left$(13_10)	key_down = vk_down$(13_10)	key_right = vk_right$(13_10)	key_attack = vk_home$(13_10)	key_block = vk_pageup  //pageup так как end у меня не работает$(13_10)	key_destroy_block = vk_pagedown$(13_10)	another_player = Pl1$(13_10)}$(13_10)"
//argument0 - игрок (1 - первый, 2 - второй)

if (argument0 == 1) {
	key_up = ord("W")
	key_left = ord("A")
	key_down = ord("S")
	key_right = ord("D")
	key_attack = ord("B")
	key_block = ord("N")
	key_destroy_block = ord("M")
	another_player = Pl2
} else {
	key_up = vk_up
	key_left = vk_left
	key_down = vk_down
	key_right = vk_right
	key_attack = vk_home
	key_block = vk_pageup  //pageup так как end у меня не работает
	key_destroy_block = vk_pagedown
	another_player = Pl1
}

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 721D9E9A
/// @DnDArgument : "script" "dashInitiator"
/// @DnDArgument : "arg" "argument0"
/// @DnDSaveInfo : "script" "1df9c269-63a5-4818-8c7d-dae7f03fb8b6"
script_execute(dashInitiator, argument0);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 080019C5
/// @DnDArgument : "var" "block_disable"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "100"
if(block_disable <= 100)
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 15EDA410
	/// @DnDParent : 080019C5
	/// @DnDArgument : "key" "key_up"
	var l15EDA410_0;
	l15EDA410_0 = keyboard_check(key_up);
	if (l15EDA410_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 55C2C1D6
		/// @DnDParent : 15EDA410
		/// @DnDArgument : "expr" "-maximum_speed"
		/// @DnDArgument : "var" "y_speed"
		y_speed = -maximum_speed;
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 108049FA
	/// @DnDParent : 080019C5
	/// @DnDArgument : "key" "key_left"
	var l108049FA_0;
	l108049FA_0 = keyboard_check(key_left);
	if (l108049FA_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2A8A5BB0
		/// @DnDParent : 108049FA
		/// @DnDArgument : "expr" "-maximum_speed"
		/// @DnDArgument : "var" "x_speed"
		x_speed = -maximum_speed;
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 75482B3A
	/// @DnDParent : 080019C5
	/// @DnDArgument : "key" "key_down"
	var l75482B3A_0;
	l75482B3A_0 = keyboard_check(key_down);
	if (l75482B3A_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5272728E
		/// @DnDParent : 75482B3A
		/// @DnDArgument : "expr" "maximum_speed"
		/// @DnDArgument : "var" "y_speed"
		y_speed = maximum_speed;
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 1CDB2A4E
	/// @DnDParent : 080019C5
	/// @DnDArgument : "key" "key_right"
	var l1CDB2A4E_0;
	l1CDB2A4E_0 = keyboard_check(key_right);
	if (l1CDB2A4E_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 03AAF96E
		/// @DnDParent : 1CDB2A4E
		/// @DnDArgument : "expr" "maximum_speed"
		/// @DnDArgument : "var" "x_speed"
		x_speed = maximum_speed;
	}
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5C0152BD
/// @DnDInput : 2
/// @DnDArgument : "expr" "x_speed + dash_speed_x"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "expr_1" "y_speed + dash_speed_y"
/// @DnDArgument : "expr_relative_1" "1"
/// @DnDArgument : "var" "x"
/// @DnDArgument : "var_1" "y"
x += x_speed + dash_speed_x;
y += y_speed + dash_speed_y;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0D6DC802
/// @DnDInput : 4
/// @DnDArgument : "expr" "x_speed * ostanovka"
/// @DnDArgument : "expr_1" " y_speed * ostanovka"
/// @DnDArgument : "expr_2" "dash_speed_x * dash_ostanovka"
/// @DnDArgument : "expr_3" "dash_speed_y * dash_ostanovka"
/// @DnDArgument : "var" "x_speed"
/// @DnDArgument : "var_1" "y_speed"
/// @DnDArgument : "var_2" "dash_speed_x"
/// @DnDArgument : "var_3" "dash_speed_y"
x_speed = x_speed * ostanovka;
y_speed =  y_speed * ostanovka;
dash_speed_x = dash_speed_x * dash_ostanovka;
dash_speed_y = dash_speed_y * dash_ostanovka;

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 3AA486F6
/// @DnDArgument : "key" "key_attack"
var l3AA486F6_0;
l3AA486F6_0 = keyboard_check_pressed(key_attack);
if (l3AA486F6_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7F9E1008
	/// @DnDParent : 3AA486F6
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "another_player.is_attacked"
	another_player.is_attacked = true;

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4AB46193
	/// @DnDParent : 3AA486F6
	/// @DnDArgument : "xpos" "x"
	/// @DnDArgument : "ypos" "y"
	/// @DnDArgument : "objectid" "Sword_1"
	/// @DnDSaveInfo : "objectid" "ed8318e9-c941-47a2-92ac-3a30ef9488e1"
	instance_create_layer(x, y, "Instances", Sword_1);
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 291D6E5F
/// @DnDArgument : "key" "key_block"
/// @DnDArgument : "not" "1"
var l291D6E5F_0;
l291D6E5F_0 = keyboard_check(key_block);
if (!l291D6E5F_0)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
	/// @DnDVersion : 1
	/// @DnDHash : 104AEC29
	/// @DnDParent : 291D6E5F
	image_alpha = 1;

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 04378EF0
	/// @DnDParent : 291D6E5F
	/// @DnDArgument : "expr" "is_attacked"
	if(is_attacked)
	{
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 4BDE629C
		/// @DnDParent : 04378EF0
		/// @DnDArgument : "expr" "in_attack_sphere"
		if(in_attack_sphere)
		{
			/// @DnDAction : YoYo Games.Instance Variables.Set_Health
			/// @DnDVersion : 1
			/// @DnDHash : 64938DFE
			/// @DnDParent : 4BDE629C
			/// @DnDArgument : "health" "-25"
			/// @DnDArgument : "health_relative" "1"
			if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
			__dnd_health += real(-25);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 503D55D8
			/// @DnDParent : 4BDE629C
			/// @DnDArgument : "var" "is_attacked"
			is_attacked = 0;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 5FAC21E9
		/// @DnDParent : 04378EF0
		else
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 727AA562
			/// @DnDParent : 5FAC21E9
			/// @DnDArgument : "var" "is_attacked"
			is_attacked = 0;
		}
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 123A44B1
else
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 7427CB61
	/// @DnDParent : 123A44B1
	/// @DnDArgument : "key" "key_block"
	var l7427CB61_0;
	l7427CB61_0 = keyboard_check(key_block);
	if (l7427CB61_0)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 55627397
		/// @DnDParent : 7427CB61
		/// @DnDArgument : "var" "block_disable"
		if(block_disable == 0)
		{
			/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
			/// @DnDVersion : 1
			/// @DnDHash : 22C3B487
			/// @DnDParent : 55627397
			/// @DnDArgument : "alpha" "0.6"
			image_alpha = 0.6;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2CE0DF15
			/// @DnDParent : 55627397
			/// @DnDArgument : "var" "is_attacked"
			is_attacked = 0;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 015561BB
		/// @DnDParent : 7427CB61
		else
		{
			/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
			/// @DnDVersion : 1
			/// @DnDHash : 4D3CE7C4
			/// @DnDParent : 015561BB
			image_alpha = 1;
		}
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 63533D9C
		/// @DnDParent : 7427CB61
		/// @DnDArgument : "expr" "is_attacked"
		if(is_attacked)
		{
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 13BB4309
			/// @DnDParent : 63533D9C
			/// @DnDArgument : "expr" "in_attack_sphere"
			if(in_attack_sphere)
			{
				/// @DnDAction : YoYo Games.Instance Variables.Set_Health
				/// @DnDVersion : 1
				/// @DnDHash : 67FAD446
				/// @DnDParent : 13BB4309
				/// @DnDArgument : "health" "-25"
				/// @DnDArgument : "health_relative" "1"
				if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
				__dnd_health += real(-25);
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 212CEEC0
				/// @DnDParent : 13BB4309
				/// @DnDArgument : "var" "is_attacked"
				is_attacked = 0;
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 1374FE62
			/// @DnDParent : 63533D9C
			else
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 5B435604
				/// @DnDParent : 1374FE62
				/// @DnDArgument : "var" "is_attacked"
				is_attacked = 0;
			}
		}
	}
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 189871DA
/// @DnDArgument : "key" "key_destroy_block"
var l189871DA_0;
l189871DA_0 = keyboard_check_pressed(key_destroy_block);
if (l189871DA_0)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 09615810
	/// @DnDParent : 189871DA
	/// @DnDArgument : "expr" "another_player.in_attack_sphere"
	if(another_player.in_attack_sphere)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 55D9267A
		/// @DnDParent : 09615810
		/// @DnDArgument : "expr" "150"
		/// @DnDArgument : "var" "another_player.block_disable"
		another_player.block_disable = 150;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 38EEBBB8
/// @DnDArgument : "var" "block_disable"
/// @DnDArgument : "not" "1"
if(!(block_disable == 0))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 04A86EE6
	/// @DnDParent : 38EEBBB8
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "block_disable"
	block_disable += -1;
}