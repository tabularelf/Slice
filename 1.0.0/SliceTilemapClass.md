# SliceSpriteClass

### `.GetMetadataAtPixel(x, y)`

Returns: `Any`

|Name|Datatype|Purpose|
|---|---|---|
|`x`|`Real`|The x position of the tilemap you wish to fetch.|
|`y`|`Real`|The y position of the tilemap you wish to fetch.|

Returns the currently assigned metadata from the tilemap's tileset from the currently specified pixel position (if any), otherwise returns `undefined`.

### `.GetMetadataAtPixel(x, y)`

Returns: `Any`

|Name|Datatype|Purpose|
|---|---|---|
|`x`|`Real`|The x position of the tilemap you wish to fetch.|
|`y`|`Real`|The y position of the tilemap you wish to fetch.|

Returns the currently assigned metadata from the tilemap's tileset from the currently specified- position (if any), otherwise returns `undefined`.

### `.PixelToCell(x, y)`

Returns: `Array of reals`

|Name|Datatype|Purpose|
|---|---|---|
|`x`|`Real`|The x position of the pixel you wish to convert to cell position.|
|`y`|`Real`|The y position of the pixel you wish to convert to cell position.|

Returns an array of reals that have been converted to cell positions, based on the current tileset width and height.