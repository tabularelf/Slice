# Slice

### `Slice(depth, [layerName])`

Returns: Instance of `__SliceClass`

|Name|Datatype|Purpose|
|---|---|---|
|`Depth`|`Real`|The depth at which a Slice will be created from.|
|`LayerName`|`String`|The name of the layer.|

Creates and returns a new Slice instance, with a layer generated alongside it.

### `LayerToSlice(layerID)`

Returns: Instance of `__SliceClass`

|Name|Datatype|Purpose|
|---|---|---|
|`LayerID`|`String or LayerID`|The layerID you'd like to create a Slice instance from.|

Creates and returns a new Slice instance, attached to an existing layer Id.

## Slice Class General Methods

### `.IsAlive()`

Returns: `Boolean`

|Name|Datatype|Purpose|
|---|---|---|
|`N/A`|||

Gets whether the Slice is alive or not.

### `.Destroy()`

Returns: `N/A`

|Name|Datatype|Purpose|
|---|---|---|
|`N/A`|||

Destroys the Slice instance and attached layer.

?> Note: If you use `LayerToSlice()`, you do not need to call `.Destroy()`!

### `.GetAsset()`

Returns: `Array of __SliceElementClass`

|Name|Datatype|Purpose|
|---|---|---|
|`asset`|`String` or `asset_* constant` or array.|The assets you wish to extract from the Slice layer.|

Extracts the specified assets and returns them in an array.

### `.GetTilemap()`

Returns: `__SliceTilemapClass` or `undefined`.

|Name|Datatype|Purpose|
|---|---|---|
|`N/A`||

Returns the first tilemap if available, otherwise returns `undefined`.

### `.GetBackground()`

Returns: `__SliceBackgroundClass` or `undefined`.

|Name|Datatype|Purpose|
|---|---|---|
|`N/A`||

Returns the first background if available, otherwise returns `undefined`.

### `.GetInstancesByObject(asset)`

Returns: `Array of instance Ids`.

|Name|Datatype|Purpose|
|---|---|---|
|`asset`|`String` or `asset_object`|The object instances you wish to fetch.|

Returns all object instances that was specified.

## Slice Class Methods (Setters)

### `.SetBeginScript(func)`

Returns: `Self`

|Name|Datatype|Purpose|
|---|---|---|
|`func`|`Function or Method Id`|The function or method used to be called.|

Assigns a Slice instance with a callback to call every time the Slice instance's layer begins to render. It takes a single argument, that contains the slice instance.

Example:
```gml
spriteSlice = LayerToSlice("Sprites");

spriteSlice.SetBeginScript(function(_slice) {
	if (event_type != ev_draw) && (event_number != 0) return;
	// Change alpha of the first sprite
	var _sprites = _slice.GetAsset(asset_sprite);
	_sprites[0].SetAlpha(abs(sin(current_time/1000)));
	
	// Change rotation of all sprites
	var _i = 0;
	repeat(array_length(_sprites)) {
		_sprites[_i].SetAngle(current_time/200);
		++_i;
	}
});
```

### `.SetEndScript(func)`

Returns: `Self`

|Name|Datatype|Purpose|
|---|---|---|
|`func`|`Function or Method Id`|The function or method used to be called.|

Assigns a Slice instance with a callback to call every time the Slice instance's layer finishes rendering. It takes a single argument, that contains the slice instance. (Example is same as above)

### `.SetVisible(value)`

Returns: `Self`

|Name|Datatype|Purpose|
|---|---|---|
|`value`|`Boolean`|Whether to set visible or not.|

Whether to set a Slice instance visible or not.

### `.SetX(value)`

Returns: `Self`

|Name|Datatype|Purpose|
|---|---|---|
|`value`|`Real`|The x position of the Slice instance layer you'd like to set|

Sets the x position of the Slice instance layer

### `.SetY(value)`

Returns: `Self`

|Name|Datatype|Purpose|
|---|---|---|
|`value`|`Real`|The y position of the Slice instance layer you'd like to set|

Sets the y position of the Slice instance layer

### `.SetShader(shaderId)`

Returns: `Self`

|Name|Datatype|Purpose|
|---|---|---|
|`shaderId`|`Shader`|The shader you'd like to set for the Slice instance layer.|

Sets the shader that the Slice instance layer will use.

### `.SetVspeed(value)`

Returns: `Self`

|Name|Datatype|Purpose|
|---|---|---|
|`value`|`Real`|The vertical speed of the Slice instance layer you'd like to set.|

Sets the vertical speed of the Slice instance layer.

### `.SetHspeed(value)`

Returns: `Self`

|Name|Datatype|Purpose|
|---|---|---|
|`value`|`Real`|The horizontal speed of the Slice instance layer you'd like to set.|

Sets the horizontal speed of the Slice instance layer.

### `.SetFX(filterEffect)`

Returns: `Self`

|Name|Datatype|Purpose|
|---|---|---|
|`filterEffect`|`Filter/Effect`|The filter or effect you'd like to use.|

Sets the filter or effect to the current Slice instance layer.

### `.SetFXState(state)`

Returns: `Self`

|Name|Datatype|Purpose|
|---|---|---|
|`state`|`Boolean`|Whether to enable or disable the current applied filter/effect.|

Enables or disables the currently applied filter/effect.

## Slice Class Methods (Getters)

### `.GetFXState()`

Returns: `FX`

|Name|Datatype|Purpose|
|---|---|---|
|`N/A`|||

Gets the current FX state.


### `.GetFX()`

Returns: `FX`

|Name|Datatype|Purpose|
|---|---|---|
|`N/A`|||

Gets the current FX.

### `.GetHspeed()`

Returns: `Real`

|Name|Datatype|Purpose|
|---|---|---|
|`N/A`|||

Gets the current horizontal speed.

### `.GetVspeed()`

Returns: `Real`

|Name|Datatype|Purpose|
|---|---|---|
|`N/A`|||

Gets the current vertical speed.

### `.GetShader()`

Returns: `ShaderID`

|Name|Datatype|Purpose|
|---|---|---|
|`N/A`|||

Gets the current assigned shader Id.

### `.GetX()`

Returns: `Real`

|Name|Datatype|Purpose|
|---|---|---|
|`N/A`|||

Gets the Slice x position.

### `.GetY()`

Returns: `Real`

|Name|Datatype|Purpose|
|---|---|---|
|`N/A`|||

Gets the Slice y position.

### `.GetVisible()`

Returns: `Boolean`

|Name|Datatype|Purpose|
|---|---|---|
|`N/A`|||

Gets the Slice current visible status.

### `.GetDepth()`

Returns: `Real`

|Name|Datatype|Purpose|
|---|---|---|
|`N/A`|||

Gets the Slice current depth.

### `.GetLayerId()`

Returns: `layerId`

|Name|Datatype|Purpose|
|---|---|---|
|`N/A`|||

Gets the Slice current layer Id.

### `.GetName()`

Returns: `String`

|Name|Datatype|Purpose|
|---|---|---|
|`N/A`|||

Gets the Slice current layer name.