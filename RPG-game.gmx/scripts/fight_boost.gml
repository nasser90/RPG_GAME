///fight_defend_boost( instance boosted , amount , type , duration); type { 1 : damage , 2 : defense , 3 : speed }

var obj = argument[0];
var val = argument[1];
var i = argument[2];
var dur = argument[3];

if ( obj.stat[1,i] == 0 ) {

    obj.stat[0,i] += val;
    obj.stat[1,i] = val;
    obj.stat[2,i] = dur;

}else{
    if( val >= obj.stat[1,i] ){
        obj.stat[0,i] += val - obj.stat[1,i];
        obj.stat[1,i] = val;
        obj.stat[2,i] = dur;
    } else{
        if( round(dur / 2) > obj.stat[2,i]){
            obj.stat[2,i] = round(dur / 2);
        }
    }
}
