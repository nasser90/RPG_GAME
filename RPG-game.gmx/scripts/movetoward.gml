

_start= argument[0]; // currint location
_end = argument[1]; // target location
_spd = argument[2]; // the speed obj will move every frame (most likely)

if(_start < _end){
    return min(_start + _spd,_end);
}   
else{
    return max(_start - _spd,_end); 
}

