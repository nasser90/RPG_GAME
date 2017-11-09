///fight_defend_boost( instance defended , amount )

var obj = argument[0];
var val = argument[1];

if ( obj.def_boost == 0 ) {
    obj.def += val;
    obj.def_boost = val;
}
else{
    if( val > obj.def_boost ){
        obj.def += val - obj.def_boost;
        obj.def_boost = val;
    }
}
