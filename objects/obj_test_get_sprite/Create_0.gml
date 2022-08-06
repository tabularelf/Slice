/// @description Insert description here
layer_element_move(layer_tilemap_get_id(layer_get_id("Tiles_1_1")), layer_get_id("Tiles_1"))
show_debug_message(LayerToSlice("Sprites").GetAsset("spr_tabelf"));
show_debug_message(LayerToSlice("Instances").GetAsset("obj_test_get_sprite"));
show_debug_message(LayerToSlice("Tiles_1").GetAsset("TileSet1"));

sprites = LayerToSlice("Sprites").GetAsset("spr_tabelf");
show_debug_message(LayerToSlice("Instances").GetTilemap());

SliceTilesetSetMetadata(TileSet1, 1, {test: true});