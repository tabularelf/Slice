/// @ignore
#macro __SLICE_VERSION "v0.0.2alpha"
#macro __SLICE_CREDITS "@TabularElf - https://tabelf.link/"
__SliceTrace(__SLICE_VERSION + " initalized! Created by " + __SLICE_CREDITS);

function __SliceInit() {
	static _init = false;
	if (_init == false) {
		_init = true;	
		global.__SliceStruct = {
			tilesetsList: [],
			tilesetsMap: {}
		}
		//var _array = tag_get_asset_ids("")
		
		// Check if we can use tile_get_info
		try {
			tileset_get_info(0);	
		} catch(_) {
			
		}
		
		var _i = 0;
		// Create a temp layer
		layer_set_target_room(room_first);
		var _layer = layer_create(0);		
		var _tileset = tileset_get_name(_i);
		while(_tileset != "<undefined>") {
			var _tilemap = layer_tilemap_create(_layer, 0, 0, _i, 1, 1);
			var _tileWidth = tilemap_get_tile_width(_tilemap);
			var _tileHeight = tilemap_get_tile_height(_tilemap);
			layer_tilemap_destroy(_tilemap);
			var _tilesetData = new __SliceTilesetClass(_i, _tileWidth, _tileHeight);
			global.__SliceStruct.tilesetsList[_i] = _tilesetData;
			global.__SliceStruct.tilesetsMap[$ _tileset] = _tilesetData;
			_tileset = tileset_get_name(++_i);
		}
		layer_destroy(_layer);
		layer_reset_target_room();
	}
}

__SliceInit();