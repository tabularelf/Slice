/*
	The bread and the buffer of this entire system.
*/
/// feather ignore all
/// @ignore
function __SliceClass(_layerID) constructor {
	__layerID = _layerID;
	__visible = layer_get_visible(_layerID);
	__beginScript = undefined;
	__endScript = undefined;
	
	#region Setters
	
	/// @param {Function, Real} func
	static SetBeginScript = function(_func) {
		if (_func == -1) {
			__beginScript = undefined;
			layer_script_begin(__layerID, -1)
			return self;	
		}
		
		var _self = self;
		__beginScript = method({container: _self, callback: _func}, function() {
			callback(container);
		});
		layer_script_begin(__layerID, __beginScript);
		return self;
	}
	
	/// @param {Function, Real} func
	static SetEndScript = function(_func) {
		if (_func == -1) {
			__endScript = undefined;
			layer_script_end(__layerID, -1)
			return self;	
		}
		
		var _self = self;
		__endScript = method({container: _self, callback: _func}, function() {
			callback(container);
		});
		layer_script_end(__layerID, __endScript);
		return self;
	}
	
	/// @param {Bool} value
	static SetVisible = function(_bool) {
		layer_set_visible(__layerID, _bool);
		return self;
	}
		
	static SetX = function(_x) {
		layer_x(__layerID, _x);
		return self;
	}
	
	static SetY = function(_y) {
		layer_y(__layerID, _y);
		return self;
	}
	
	static SetShader = function(_shader) {
		layer_shader(__layerID, _shader);
		return self;	
	}
	
	static SetVspeed = function(_num) {
		layer_vspeed(__layerID, _num);
		return self;
	}
	
	static SetHspeed = function(_num) {
		layer_hspeed(__layerID, _num);
		return self;
	}
	
	static SetFX = function(_fx) {
		layer_set_fx(__layerID, _fx);
		EnableFX();
		return self;
	}
	
	static SetFX = function(_value) {
		layer_enable_fx(__layerID, _value);	
		return self;
	}
	#endregion
	
	#region Getters
	
	#region Layer Specific
	/// @return {Boolean}
	static GetFXState = function() {
		return layer_fx_is_enabled(__layerID);	
	}
	
	/// @return {Struct.FX}
	static GetFX = function() {
		return layer_get_fx(__layerID);	
	}
	
	/// @return {Real}
	static GetHspeed = function() {
		return layer_get_hspeed(__layerID);	
	}
	
	/// @return {Real}
	static GetVspeed = function() {
		return layer_get_vspeed(__layerID);	
	}
	
	/// @return {Asset.GMShader}
	static GetShader = function() {
		return layer_get_shader(__layerID);
	}
	
	/// @return {Real}
	static GetX = function() {
		return layer_get_x(__layerID);	
	}
	
	/// @return {Real}
	static GetY = function() {
		return layer_get_y(__layerID);	
	}
	
	/// @return {Boolean}
	static GetVisible = function() {
		return layer_get_visible(__layerID);	
	}
	
	/// @return {Boolean}
	static IsAlive = function() {
		return layer_exists(__layerID);	
	}
	
	/// @return {Real}
	static GetDepth = function() {
		return layer_get_depth(__layerID);	
	}
	
	/// @return {Id.Layer}
	static GetLayerId = function() {
		return __layerID;	
	}
	
	/// @return {String}
	static GetName = function() {
		return layer_get_name(__layerID);	
	}
	
	static Destroy = function() {
		layer_destroy(__layerID);
		__layerID = -1;
	}
	#endregion
	/// @param {String, Constant.AssetType} assetName
	/// @return {Array}
	static GetAsset = function(_assetName) {
		var _result = undefined;
		if (is_array(_assetName)) {
			_result = [];
			var _array;
			var _i = 0;
			repeat(array_length(_assetName)) {
				_array = GetAsset(_assetName[_i]);
				array_copy(_result, array_length(_result), _array, 0, array_length(_array));
				++_i;
			}
			return _result;
		}
		
		if (_assetName == asset_sprite) {
			return __GetAllSprites();	
		}
		
		if (_assetName == asset_tiles) {
			return __GetAssetTilemapElement(all);	
		}
	
		var _type = asset_get_type(_assetName);
		var _assetIndex = asset_get_index(_assetName);
		switch(_type) {
			case asset_sprite: _result = __GetAssetSpriteElement(_assetIndex); break;
			case asset_object: _result = __GetAssetInstancesByObjectElement(_assetIndex); break;
			case asset_tiles: _result = __GetAssetTilemapElement(_assetIndex); break;
			default: _result = []; break;
		}
		
		return _result ?? [];
	}

	/// @return {Struct.__SliceTilemapClass, Undefined}
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
	
	/// @param {String} assetName
	/// @return {Array<Id.Instance>, Undefined}
	static GetInstancesByObject = function(_assetName) {
		if (is_array(_assetName)) {
			_result = [];
			var _result;
			var _array;
			var _i = 0;
			repeat(array_length(_assetName)) {
				_array = GetInstancesByObject(_assetName[_i]);
				array_copy(_result, array_length(_result), _array, 0, array_length(_array));
				++_i;
			}
			return _result;
		}
		
		if (asset_get_index(_assetName) == -1) {
			__SliceTrace("Invalid asset name " + string(_assetName) + "!");
			return undefined;
		}

		return __GetAssetInstancesByObject(asset_get_index(_assetName));
	}
	
	/// @return {Struct.__SliceTilemapClass, Undefined}}
	static GetBackground = function() {
		var _elements = layer_get_all_elements(__layerID);
		var _i = 0;
		repeat(array_length(_elements)) {
			if ((layer_get_element_type(_elements[_i]) == layerelementtype_background)) {
				return new __SliceBackgroundClass(_elements[_i]);
			}
			++_i;
		}
		
		// If none found
		return undefined;
	}
	
	/// @return {Array<Struct.__SliceBackgroundClass>}
	static GetAllBackgrounds = function() {
		var _elements = layer_get_all_elements(__layerID);
		var _i = 0;
		var _array = [];
		repeat(array_length(_elements)) {
			if ((layer_get_element_type(_elements[_i]) == layerelementtype_background)) {
				array_push(_array, new __SliceBackgroundClass(_elements[_i]));
			}
			++_i;
		}
		
		// If none found
		return _array;
	}
	#endregion
	
	#region Resetters (NOT IMPLEMENTED)
	//static ResetAll = function() {
	//	ResetBeginScript();
	//	ResetEndScript();
	//	ResetFX();
	//	
	//	return self;
	//}
	//
	//static ResetBeginScript = function() {
	//	SetBeginScript(-1);
	//	return self;	
	//}
	//
	//static ResetEndScript = function() {
	//	SetEndScript(-1);
	//	return self;	
	//}
	//
	//static ResetFX = function() {
	//	DisableFX();
	//	return self;
	//}
	#endregion
	
	#region Internal
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
			if ((layer_get_element_type(_elements[_i]) == layerelementtype_tilemap) && ((_assetIndex == all) || (tilemap_get_tileset(_elements[_i]) == _assetIndex))) {
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
	
	static __GetAllSprites = function() {
		var _elements = layer_get_all_elements(__layerID);
		var _i = 0;
		var _array = [];
		repeat(array_length(_elements)) {
			if ((layer_get_element_type(_elements[_i]) == layerelementtype_sprite)) {
				array_push(_array, new __SliceSpriteClass(_elements[_i]));
			}
			++_i;
		}
		
		return _array;	
	}
	#endregion
}
