///align_to_grid( val , alignto );

var val = argument[0];
var alignto = argument[1];
var diff = val mod alignto;
var halfway = (alignto -1) div 2;

if(diff > halfway){
    return alignto - diff;
}
else 
    return -diff;
