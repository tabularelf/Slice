//SliceSpriteGroupSetAlpha(sprites, abs(sin(current_time/1000)));
sprites[0].SetAlpha(abs(sin(current_time/1000)));
var _i = 0;
repeat(array_length(allSprites)) {
	allSprites[_i].SetAngle(current_time/200);
	++_i;
}

var _layer = LayerToSlice("Tiles_1");
var _tileset = _layer.GetTilemap();

draw_text(32, 32, _tileset.GetMetadataAtPixel(mouse_x, mouse_y));
draw_text(32, 64, _tileset.PixelToCell(mouse_x, mouse_y));