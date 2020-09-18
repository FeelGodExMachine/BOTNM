/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 6111E6EE
/// @DnDArgument : "expr" "is_attacked"
if(is_attacked)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 666F55C5
	/// @DnDParent : 6111E6EE
	/// @DnDArgument : "expr" "in_attack_sphere"
	if(in_attack_sphere)
	{
		/// @DnDAction : YoYo Games.Instance Variables.Set_Health
		/// @DnDVersion : 1
		/// @DnDHash : 6896D255
		/// @DnDParent : 666F55C5
		/// @DnDArgument : "health" "-10"
		/// @DnDArgument : "health_relative" "1"
		if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
		__dnd_health += real(-10);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1E89E928
		/// @DnDParent : 666F55C5
		/// @DnDArgument : "var" "is_attacked"
		is_attacked = 0;
	
		/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
		/// @DnDVersion : 1
		/// @DnDHash : 66AF4CBA
		/// @DnDParent : 666F55C5
		/// @DnDArgument : "msg" "Pl2.__dnd_health"
		show_debug_message(string(Pl2.__dnd_health));
	
		/// @DnDAction : YoYo Games.Common.Return
		/// @DnDVersion : 1
		/// @DnDHash : 14496A66
		/// @DnDParent : 666F55C5
		/// @DnDArgument : "value" "0"
		return 0;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 10C67002
	/// @DnDParent : 6111E6EE
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 437E8E10
		/// @DnDParent : 10C67002
		/// @DnDArgument : "var" "is_attacked"
		is_attacked = 0;
	
		/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
		/// @DnDVersion : 1
		/// @DnDHash : 507E6D13
		/// @DnDParent : 10C67002
		/// @DnDArgument : "msg" ""Not attacked""
		show_debug_message(string("Not attacked"));
	}
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 603FD6F3
/// @DnDDisabled : 1
/// @DnDArgument : "code" "image_angle = point_direction(x,y,Pl1.x,Pl1.y);"