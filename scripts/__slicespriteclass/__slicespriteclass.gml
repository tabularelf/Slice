function __SliceSpriteClass(_spriteElement) : __SliceElementClass() constructor {
	__elementID = _spriteElement;
	__spriteID = layer_sprite_get_sprite(_spriteElement);
	__speed = layer_sprite_get_speed(_spriteElement);
	__alpha = layer_sprite_get_alpha(_spriteElement);
	__blend = layer_sprite_get_blend(_spriteElement);
	__x = layer_sprite_get_x(_spriteElement);
	__y = layer_sprite_get_y(_spriteElement);
	__xScale = layer_sprite_get_xscale(_spriteElement);
	__yScale = layer_sprite_get_yscale(_spriteElement);
	__angle = layer_sprite_get_angle(_spriteElement);
	__index = layer_sprite_get_index(_spriteElement);
	
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
	
	static GetAlpha = function() {
		return __alpha;	
	}
	
	static GetColour = function() {
		return __blend;	
	}
	
	static GetSprite = function() {
		return __spriteID;	
	}
	
	static GetX = function() {
		return __x;
	}
	
	static GetY = function() {
		return __y;
	}
	
	static GetXScale = function() {
		return __xScale;
	}
	
	static GetYScale = function() {
		return __yScale;
	}
	
	static GetSpeed = function() {
		return __speed;
	}
	
	static GetAngle = function() {
		return __angle;	
	}
	
	static GetIndex = function() {
		return __index;	
	}
}
