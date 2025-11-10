/// @description  mouse camera movement

// move the view when mouse reaches the edge.
if (mouse_x > __view_get( e__VW.XView, 0 )+((__view_get( e__VW.WView, 0 )/2)+300) && __view_get( e__VW.XView, 0 ) < (room_width-__view_get( e__VW.WView, 0 ))) {__view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (10) );}
if (mouse_x < __view_get( e__VW.XView, 0 )+((__view_get( e__VW.WView, 0 )/2)-300) && __view_get( e__VW.XView, 0 ) > 0) {__view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) - (10) );}


