/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
// Inherit the parent event
event_inherited();

walkRange = 48;
walkSpeed = 1;

waitTimer = 30;

assignedPoints = 150;

chargeRadius = 120;

attackType=AttackType.Ranged;

var name="mage";
asset_get_index("spr_"+name+"_idle");


spr_idle = asset_get_index("spr_"+name+"_idle"); //modo piu veloce volendo
spr_walk = spr_mage_walk;
spr_charge = spr_mage_charge;
spr_attack = spr_mage_attack;
spr_die = spr_mage_die;
spr_dead = spr_mage_dead;
spr_head = spr_mage_head;

