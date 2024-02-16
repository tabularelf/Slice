/// @ignore
/// feather ignore all
function __SliceTilesetClass(_tilesetID, _tileWidth, _tileHeight = _tileWidth) constructor {
	__id = _tilesetID;
	__name = tileset_get_name(_tilesetID);	
	__metadata = [];
	__tileWidth = _tileWidth;
	__tileHeight = _tileHeight;
}