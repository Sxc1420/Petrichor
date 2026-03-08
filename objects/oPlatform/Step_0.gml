if (isTrap) {
	instance_destroy(id);
	var trapInstance = instance_create_layer(x, y, "Spawns", oTrap);
	//instance_change(oTrap, false);
	
}