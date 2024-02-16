/// @ignore
/// feather ignore all
function __SliceElementClass() constructor {
	static Move = function(_slice) {
		if (is_struct(_slice)) && (instanceof(_slice) == "__SliceClass") {
			layer_element_move(__elementID, _slice.__layerID);
		} else {
			 layer_element_move(__elementID, _slice);
		}
		return self;
	}
	
	static GetElementId = function() {
		return __elementID;	
	}
}