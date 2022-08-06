
function __SliceTilemapClass(_tilemapID) : __SliceElementClass() constructor {
	__elementID = _tilemapID;
	__tileset = tilemap_get_tileset(_tilemapID);
	__tileWidth = global.__SliceStruct.tilesetsList[__tileset].__tileWidth;
	__tileHeight = global.__SliceStruct.tilesetsList[__tileset].__tileHeight;
	
	static GetMetadataAtPixel = function(_x, _y) {
		var _tileData = global.__SliceStruct.tilesetsList[__tileset];
		var _index = tile_get_index(tilemap_get(__elementID, tilemap_get_cell_x_at_pixel(__elementID, _x, _y), tilemap_get_cell_y_at_pixel(__elementID, _x, _y)));
		
		if (_index > array_length(_tileData.__metadata)-1) return undefined;
		
		return _tileData.__metadata[_index];
	}
	
	static GetMetadata = function(_x, _y) {
		var _tileData = global.__SliceStruct.tilesetsList[__tileset];
		var _index = tile_get_index(tilemap_get(__elementID, _x, _y));
		
		if (_index > array_length(_tileData.__metadata)-1) return undefined;
		
		return _tileData.__metadata[_index];
	}
	
	static PixelToCell = function(_x, _y) {
		return [_x div __tileWidth, _y div __tileHeight];	
	}
	
	static SetTileset = function(_tileset) {
		__tileset = _tileset;
		__tileWidth = global.__SliceStruct.tilesetsList[__tileset].__tileWidth;
		__tileHeight = global.__SliceStruct.tilesetsList[__tileset].__tileHeight;
		tilemap_tileset(__elementID, _tileset);
		return self;
	}
	
	static GetTileset = function() {
		return __tileset;
	}
	
	static GetTileWidth = function() {
		return __tileWidth;	
	}
	
	static GetTileHeight = function() {
		return __tileHeight;	
	}
	
	static GetTileSize = function() {
		return [GetTileWidth(), GetTileHeight()];	
	}
}