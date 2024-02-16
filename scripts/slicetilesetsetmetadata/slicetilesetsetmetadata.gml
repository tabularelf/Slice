/// feather ignore all
/// @func SliceTileSetSetMetadata
/// @param {Asset.GMTileSet} tilesetID
/// @param {Real} index
/// @param {Any} data
function SliceTilesetSetMetadata(_tilesetID, _index, _data) {
	static _init = __SliceInit();
	var _tileset = global.__SliceStruct.tilesetsMap[$ is_string(_tilesetID) ? _tilesetID : tileset_get_name(_tilesetID)];
	
	if (array_length(_tileset.__metadata) < _index) {
		var _i = array_length(_tileset.__metadata);
		repeat(_index - _i) {
			_tileset.__metadata[_i] = undefined;
			++_i;
		}
	}
	
	_tileset.__metadata[_index] = _data;
}