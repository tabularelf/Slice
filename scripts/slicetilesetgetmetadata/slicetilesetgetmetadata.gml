function SliceTilesetGetMetadata(_tilesetID, _index) {
	var _tileData = global.__SliceStruct.tilesetsList[_tilesetID];
	var _tileIndex = tile_get_index(tilemap_get(_tilemap, tilemap_get_cell_x_at_pixel(_tilemap, _x, _y), tilemap_get_cell_y_at_pixel(_tilemap, _x, _y)));
	
	if (_tileIndex > array_length(_tileData.__metadata)-1) return undefined;
	
	return _tileData.__metadata[_tileIndex];
}