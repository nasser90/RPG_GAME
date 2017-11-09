///fight_attack(attacker, attack index , instance attacked )

var att = argument[0]; // the attacker
var i = argument[1]; // the index of the attack
var attd = argument[2]; // the one being attacked

attd.hp = max( attd.hp - ( (attack[0,i] * round(att.stat[0,0] / 2)) - round(att.stat[0,2]/2) ) , 0 );
scr_text(string(att.name) + " attacked " + string(attd.name) + " with " + attack[1,i] + " by " + string( ((attack[0,i] * round(att.stat[0,0] / 2)) - (round(att.stat[0,2]/2 )))),3,view_xview[0] + 100,view_yview[0]+366,view_wview[0]-192,fnt_default,2,"","");
return true;

