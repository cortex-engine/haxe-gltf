import buddy.*;
using buddy.Should;

import haxe.ds.StringMap;
import gltf.GLTF;

class TestImages extends BuddySuite {
	public function new(sources:StringMap<String>) {
		describe("Loading images", {
			var box:GLTF = GLTF.parse(sources.get("box"));
			it("", {});
		});
	}
}