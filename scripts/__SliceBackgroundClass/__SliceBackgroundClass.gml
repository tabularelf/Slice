/// @ignore
/// feather ignore all
function __SliceBackgroundClass(_backgroundElement) : __SliceElementClass() constructor {
	__elementID = _backgroundElement;
		
	#region Setters
	static SetSprite = function(_sprite) {
		layer_background_sprite(__elementID, _sprite);
		return self;
	}
	
	static SetColour = function(_value) {
		layer_background_blend(__elementID, _value);
		return self;
	}
	
	static SetColor = SetColour;
	
	static SetAlpha = function(_value) {
		layer_background_alpha(__elementID, _value);
		return self;
	}
	
	static SetXScale = function(_value) {
		layer_background_xscale(__elementID, _value);
		return self;	
	}
	
	static SetYScale = function(_value) {
		layer_background_yscale(__elementID, _value);
		return self;	
	}
	
	static SetIndex = function(_value) {
		layer_background_index(__elementID, _value);
		return self;	
	}
	
	static SetSpeed = function(_value) {
		layer_background_speed(__elementID, _value);
		return self;
	}
	
	static SetStretch = function(_value) {
		layer_background_stretch(__elementID, _value);
		return self;
	}
	
	static SetVtiled = function(_value) {
		layer_background_vtiled(__elementID, _value);
		return self;
	}
	
	static SetHtiled = function(_value) {
		layer_background_htiled(__elementID, _value);
		return self;
	}
	#endregion
	
	#region Getters
	static GetSprite = function() {
		return layer_background_get_sprite(__elementID);	
	}
	
	static GetColour = function() {
		return layer_background_get_blend(__elementID);	
	}
	
	static GetColor = GetColour;
	
	static GetAlpha = function() {
		return layer_background_get_alpha(__elementID);	
	}
	
	static GetXscale = function() {
		return layer_background_get_xscale(__elementID);	
	}
	
	static GetYscale = function() {
		return layer_background_get_yscale(__elementID);	
	}
	
	static GetIndex = function() {
		return layer_background_get_index(__elementID);	
	}
	
	static GetHtiled = function() {
		return layer_background_get_htiled(__elementID);	
	}
	
	static GetVtiled = function() {
		return layer_background_get_vtiled(__elementID);	
	}
	#endregion
}