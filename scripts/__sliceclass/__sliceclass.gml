/*
	The bread and the buffer of this entire system.
*/
function __SliceClass(_layerID) constructor {
	__layerID = _layerID;
	
	static Destroy = function() {
		layer_destroy(__layerID);
		__layerID = -1;
	}
	
	static GetAsset = function(_assetName) {
		if (asset_get_index(_assetName) == -1) {
			show_debug_message("Slice: Invalid asset name " + string(_assetName) + "!");
			return undefined;
		}
	
		var _type = asset_get_type(_assetName);
		var _result;
		switch(_type) {
			case asset_sprite: _result = __GetAssetSpriteElement(asset_get_index(_assetName)); break;
			case asset_object: _result = __GetAssetInstancesByObjectElement(asset_get_index(_assetName)); break;
			case asset_tiles: _result = __GetAssetTilemapElement(asset_get_index(_assetName)); break;
			default: _result = []; break;
		}
		
		return _result;
	}
	
	static GetTilemap = function() {
		var _elements = layer_get_all_elements(__layerID);
		var _i = 0;
		repeat(array_length(_elements)) {
			if ((layer_get_element_type(_elements[_i]) == layerelementtype_tilemap)) {
				return new __SliceTilemapClass(_elements[_i]);
			}
			++_i;
		}
		
		// If none found
		return undefined;
	}
	
	static GetInstancesByObject = function(_assetName) {
		if (asset_get_index(_assetName) == -1) {
			show_debug_message("Slice: Invalid asset name " + string(_assetName) + "!");
			return undefined;
		}

		return __GetAssetInstancesByObject(asset_get_index(_assetName));
	}
	
	// Asset scanners
	static __GetAssetSpriteElement = function(_assetIndex) {
		var _elements = layer_get_all_elements(__layerID);
		var _i = 0;
		var _array = [];
		repeat(array_length(_elements)) {
			if ((layer_sprite_get_sprite(_elements[_i]) == _assetIndex) && (layer_get_element_type(_elements[_i]) == layerelementtype_sprite)) {
				array_push(_array, new __SliceSpriteClass(_elements[_i]));
			}
			++_i;
		}
		
		return _array;
	}
	
	static __GetAssetTilemapElement = function(_assetIndex) {
		var _elements = layer_get_all_elements(__layerID);
		var _i = 0;
		var _array = [];
		repeat(array_length(_elements)) {
			if ((layer_get_element_type(_elements[_i]) == layerelementtype_tilemap) && (tilemap_get_tileset(_elements[_i]) == _assetIndex)) {
				array_push(_array, new __SliceTilemapClass(_elements[_i]));
			}
			++_i;
		}
		
		return _array;
	}
	
	static __GetAssetInstancesByObjectElement = function(_assetIndex) {
		var _elements = layer_get_all_elements(__layerID);
		var _i = 0;
		var _array = [];
		repeat(array_length(_elements)) {
			var _id = layer_instance_get_instance(_elements[_i]);
			if (!instance_exists(_id)) {
				if ((_id.object_index == _assetIndex) && (layer_get_element_type(_elements[_i]) == layerelementtype_instance)) {
					array_push(_array, _elements[_i]);
				}
			}
			++_i;
		}
		
		return _array;
	}
	
	static __GetAssetInstancesByObject = function(_assetIndex) {
		var _elements = layer_get_all_elements(__layerID);
		var _i = 0;
		var _array = [];
		repeat(array_length(_elements)) {
			var _id = layer_instance_get_instance(_elements[_i]);
			if (!instance_exists(_id)) {
				if ((_id.object_index == _assetIndex) && (layer_get_element_type(_elements[_i]) == layerelementtype_instance)) {
					array_push(_array, _id);
				}
			}
			++_i;
		}
		
		return _array;
	}
}