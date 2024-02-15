//SliceSpriteGroupSetAlpha(sprites, abs(sin(current_time/1000)));
var _layer = LayerToSlice("Tiles_1");
var _tileset = _layer.GetTilemap();
var _data = _tileset.GetMetadataAtPixel(mouse_x, mouse_y);
draw_text(32, 32, _data != undefined ? _data.test : "undefined");
draw_text(32, 64, string(_tileset.PixelToCell(mouse_x, mouse_y)));