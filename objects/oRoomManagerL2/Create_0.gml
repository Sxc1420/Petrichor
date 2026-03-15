coins_collected = 0;
dialogue = 11;
restarted= false;

function get_all_instances_on_layer(layer_name) {
	    var _layer_id = layer_get_id(layer_name); // Get the layer ID
	    var _elements = layer_get_all_elements(_layer_id); // Get all elements on the layer
	    var _instances = []; // Array to store the instance IDs

	    for (var i = 0; i < array_length(_elements); i++) {
	        var _element_id = _elements[i];
        
	        // Check if the element is an instance type
	        if (layer_get_element_type(_element_id) == layerelementtype_instance) {
	            // Get the actual instance ID from the layer element ID
	            var _inst = layer_instance_get_instance(_element_id); 
	            array_push(_instances, _inst);
	        }
	    }
    
	    return _instances; // Return the array of instances
	}