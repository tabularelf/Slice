/// @desc  feather ignore all
/// @func SliceTilesetGetMetadata
/// @param {Asset.GMTileSet, String} _tilesetID Description
/// @param {Real} _index Description
/// @return {Any}
function SliceTilesetGetMetadata(_tilesetID, _index) {
	var _tileData = global.__SliceStruct.tilesetsMap[$ is_string(_tilesetID) ? _tilesetID : tileset_get_name(_tilesetID)];
	
	if (_index > array_length(_tileData.__metadata)-1) || (_index < 0) return undefined;
	return _tileData.__metadata[_index];
}