spriteSlice = LayerToSlice("Instances");
repeat(10) {
	layer_sprite_create("Instances", irandom(room_width), irandom(room_height), choose(spr_tabelf, spr_tabbyducky));	
}

LayerToSlice("Background").GetBackground().SetColour(c_red).SetSprite(spr_tabbyducky).SetHtiled(true).SetVtiled(true);

spriteSlice.SetBeginScript(function(_slice) {
	if (event_type != ev_draw) && (event_number != 0) return;
	// Change alpha of sprite
	var _sprites = _slice.GetAsset(asset_sprite);
	_sprites[0].SetAlpha(abs(sin(current_time/1000)));
	
	// Change rotation of all sprites
	var _i = 0;
	repeat(array_length(_sprites)) {
		_sprites[_i].SetAngle(current_time/200);
		++_i;
	}
}).SetVisible(true);

SliceTilesetSetMetadata(TileSet1, 1, {test: true});	
SliceTilesetSetMetadata(TileSet1, 0, {test: false});	