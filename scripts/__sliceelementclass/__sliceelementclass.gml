/// @ignore
function __SliceElementClass() constructor {
	static Move = function(_slice) {
		if (instanceof(_slice) == "__SliceClass") {
			layer_element_move(__elementID, _slice.__layerID);
		} else {
			 layer_element_move(__elementID, _slice);
		}
		return self;
	}
	
	static GetElementID = function() {
		return __elementID;	
	}
}