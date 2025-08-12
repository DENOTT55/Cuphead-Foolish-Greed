if global.graficos == 1{
	layer_enable_fx("FONDO",false)
	layer_enable_fx("bk_back02",false)
	layer_enable_fx("bk_front",false)	
}	
if global.graficos == 0
{
	layer_enable_fx("FONDO",true)
	layer_enable_fx("bk_back02",true)
	layer_enable_fx("bk_front",true)	
}