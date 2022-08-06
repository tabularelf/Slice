function __SliceElementClass() constructor {
	static Move = function(_slice) {
		layer_element_move(__element, _slice.__layerID);
		return self;
	}
	
	static GetElementID = function() {
		return __elementID;	
	}
}