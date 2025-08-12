if instance_exists(obj_cuphead_player) {
if(x != obj_cuphead_player.x)
{
	x += (obj_cuphead_player.x - x) * camspeed;
}

if(y != obj_cuphead_player.y)
{
	y += (obj_cuphead_player.y - y) * camspeed;	
}}
else
if instance_exists(obj_worldmap_cuphead) {
if(x != obj_worldmap_cuphead.x)
{
	x += (obj_worldmap_cuphead.x - x) * camspeed;
}

if(y != obj_worldmap_cuphead.y)
{
	y += (obj_worldmap_cuphead.y - y) * camspeed;	
}}