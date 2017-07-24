///draw_rectangle_grided(xstart, ystart, xend, yend, grid_num, box_colour, outline_colour, grid_colour)
var _xstart = argument[0];
var _ystart = argument[1];
var _xend = argument[2];
var _yend = argument[3];
var num_of_grid = argument[4];
var Bcol = argument[5];
var Ocol = argument[6];
var Gcol = argument[7];

draw_set_colour(Bcol);
draw_rectangle(_xstart,_ystart,_xend,_yend,0);
draw_set_colour(Ocol);
draw_rectangle(_xstart,_ystart,_xend,_yend,1);

draw_set_colour(Gcol);

var grid_size = abs(_xstart - _xend)/num_of_grid;

for(var i = 1; i< num_of_grid;i++){
    draw_line(_xstart+(grid_size*i),_ystart,_xstart+(grid_size*i),_yend);
}

var grid_size = abs(_ystart - _yend)/num_of_grid;

for(var i = 1; i< num_of_grid;i++){
    draw_line(_xstart,_ystart+(grid_size*i),_xend,_ystart+(grid_size*i));
} 


