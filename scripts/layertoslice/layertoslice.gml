/// feather ignore all
//// @func LayerToSlice(layerID);
/// @param {Id.Layer, String} layerID
/// @returns {Struct.__SliceClass}
function LayerToSlice(_layerID) {
	if (layer_exists(_layerID)) {
		return new __SliceClass(is_string(_layerID) ? layer_get_id(_layerID) : _layerID);	
	}
}