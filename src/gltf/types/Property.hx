package gltf.types;

import gltf.schema.TGLTFProperty;

class Property {
	public var extras(default, null):Null<Map<String, Dynamic>> = null;

	inline function loadProperty(gltf:GLTF, prop:TGLTFProperty):Void {
        final ext:haxe.DynamicAccess<Dynamic> = prop.extras;
        if (ext != null) {
            extras = new Map();
            for (k=>v in ext)
                extras.set(k, v);
        }
    }
}