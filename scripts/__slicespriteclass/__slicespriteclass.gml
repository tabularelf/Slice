/// @ignore
function __SliceSpriteClass(_spriteElement) : __SliceElementClass() constructor {
	__elementID = _spriteElement;

	#region Setters
	static SetSprite = function(_sprite) {
		layer_sprite_change(__elementID, _sprite);
		__spriteID = _sprite;
		return self;
	}
	
	static SetColour = function(_col) {
		layer_sprite_blend(__elementID, _col);
		__blend = _col;
		return self;
	}
	
	static SetColor = SetColour;
	
	static SetAlpha = function(_alpha) {
		layer_sprite_alpha(__elementID, _alpha);
		__alpha = _alpha;
		return self;
	}
	
	static SetX = function(_x) {
		layer_sprite_x(__elementID, _x);
		__x = _x;
		return self;
	}
	
	static SetY = function(_y) {
		layer_sprite_y(__elementID, _y);
		__y = _y;
		return self;
	}
	
	static SetXScale = function(_xScale) {
		layer_sprite_xscale(__elementID, _xScale);
		__xScale = _xScale;
		return self;
	}
	
	static SetYScale = function(_yScale) {
		layer_sprite_yscale(__elementID, _yScale);
		__yScale = _yScale;
		return self;
	}
	
	static SetSpeed = function(_spd) {
		layer_sprite_speed(__elementID, _spd);
		__speed = _spd;
		return self;	
	}
	
	static SetAngle = function(_ang) {
		layer_sprite_angle(__elementID, _ang);
		__angle = _ang;
		return self;		
	}
	
	static SetIndex = function(_index) {
		layer_sprite_index(__elementID, _index);
		__index = _index;
		return self;
	}
	#endregion
	
	#region Getters
	static GetAlpha = function() {
		return layer_sprite_get_alpha(__elementID);	
	}
	
	static GetColour = function() {
		return layer_sprite_get_blend(__elementID);	
	}
	
	static GetSprite = function() {
		return layer_sprite_get_sprite(__elementID);
	}
	
	static GetX = function() {
		return layer_sprite_get_x(__elementID);
	}
	
	static GetY = function() {
		return layer_sprite_get_y(__elementID);
	}
	
	static GetXscale = function() {
		return layer_sprite_get_xscale(__elementID);
	}
	
	static GetYscale = function() {
		return layer_sprite_get_yscale(__elementID);
	}
	
	static GetSpeed = function() {
		return layer_sprite_get_speed(__elementID);
	}
	
	static GetAngle = function() {
		return layer_sprite_get_angle(__elementID);	
	}
	
	static GetIndex = function() {
		return layer_sprite_get_index(__elementID);	
	}
	#endregion
}
