package gltf.types;

import haxe.ds.Vector;
import gltf.schema.TGLTF;
import gltf.schema.TMaterialPBRMetallicRoughness;
import gltf.schema.TMaterial;
import gltf.schema.TMaterialNormalTextureInfo;
import gltf.schema.TTextureInfo;

@:allow(gltf.GLTF)
class Material extends Property {
    public var name(default, null):Null<String> = null;
    public var normalTexture(default, null):Null<TMaterialNormalTextureInfo> = null;
    public var emissiveTexture(default, null):Null<TTextureInfo> = null;
    public var pbrMetallicRoughness(default, null):Null<TMaterialPBRMetallicRoughness> = null;

    function new() {}

    function load(gltf:GLTF, material:TMaterial):Void {
        super.loadProperty(gltf, material);
        name = material.name;
        pbrMetallicRoughness = material.pbrMetallicRoughness;
        normalTexture = material.normalTexture;
        emissiveTexture = material.emissiveTexture;
    }

    static function loadFromRaw(gltf:GLTF, raw:TGLTF):Vector<Material> {
        var materials:Vector<Material> = new Vector<Material>(raw.materials.length);
        for(i in 0...raw.materials.length) {
            materials[i] = new Material();
        }
        for(i in 0...raw.materials.length) {
            materials[i].load(gltf, raw.materials[i]);
        }
        return materials;
    }
}