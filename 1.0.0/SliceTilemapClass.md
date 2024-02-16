# SliceTilemapClass

### `.GetMetadataAtPixel(x, y)`

Returns: `Any`

|Name|Datatype|Purpose|
|---|---|---|
|`x`|`Real`|The x position you wish to fetch.|
|`y`|`Real`|The y position you wish to fetch.|

Returns the currently assigned metadata from the tilemap's tileset from the currently specified pixel position (if any), otherwise returns `undefined`.

### `.GetMetadataAtPixel(x, y)`

Returns: `Any`

|Name|Datatype|Purpose|
|---|---|---|
|`x`|`Real`|The x cell position you wish to fetch.|
|`y`|`Real`|The y cell position you wish to fetch.|

Returns the currently assigned metadata from the tilemap's tileset from the currently specified- position (if any), otherwise returns `undefined`.

### `.PixelToCell(x, y)`

Returns: `Array of reals`

|Name|Datatype|Purpose|
|---|---|---|
|`x`|`Real`|The x position of the pixel you wish to convert to cell position.|
|`y`|`Real`|The y position of the pixel you wish to convert to cell position.|

Returns an array of reals that have been converted to cell positions, based on the current tileset tile width and height.

### `.GetTileSize()`

Returns: `Array of reals`

|Name|Datatype|Purpose|
|---|---|---|
|`N/A`||

Returns an array of reals that contain the current tileset tile width and height.

### `.GetTileWidth()`

Returns: `Real`

|Name|Datatype|Purpose|
|---|---|---|
|`N/A`||

Returns an array of reals that contain the current tileset tile width.

### `.GetTileHeight()`

Returns: `Real`

|Name|Datatype|Purpose|
|---|---|---|
|`N/A`||

Returns an array of reals that contain the current tileset tile height.

### `.GetIndex(x, y)`

Returns: `Real`

|Name|Datatype|Purpose|
|---|---|---|
|`x`|`Real`|The x cell position you wish to fetch.|
|`y`|`Real`|The y cell position you wish to fetch.|

Returns the tile index from the tilemap, using cell coordinates.

### `.GetIndexAtPixel(x, y)`

Returns: `Real`

|Name|Datatype|Purpose|
|---|---|---|
|`x`|`Real`|The x position you wish to fetch.|
|`y`|`Real`|The y position you wish to fetch.|

Returns the tile index from the tilemap, using pixel coordinates.

### `.SetIndex(index, x, y)`

Returns: `self`

|Name|Datatype|Purpose|
|---|---|---|
|`index`|`Real`|The index you'd like to set.|
|`x`|`Real`|The x cell position you wish to fetch.|
|`y`|`Real`|The y cell position you wish to fetch.|

Sets the tile index, using cell coordinates.

### `.SetIndexAtPixel(index, x, y)`

Returns: `self`

|Name|Datatype|Purpose|
|---|---|---|
|`index`|`Real`|The index you'd like to set.|
|`x`|`Real`|The x position you wish to fetch.|
|`y`|`Real`|The y position you wish to fetch.|

Sets the tile index, using pixel coordinates.