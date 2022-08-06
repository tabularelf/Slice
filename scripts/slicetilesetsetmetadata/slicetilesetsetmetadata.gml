function SliceTilesetSetMetadata(_tilesetID, _index, _struct) {
	var _tileset = global.__SliceStruct.tilesetsList[_tilesetID];
	
	if (array_length(_tileset.__metadata) < _index) {
		var _i = array_length(_tileset.__metadata);
		repeat(_index - _i) {
			_tileset.__metadata[_i] = undefined;
			++_i;
		}
	}
	
	_tileset.__metadata[_index] = _struct;
}