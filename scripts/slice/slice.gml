function Slice(_depth = 0, _layName = undefined) {
	static _id = 0;
	var _name = _layName ?? "SliceLayer" + string(_id++);
	return new __SliceClass(layer_create(_depth, _name));
}