package ;

import buddy.Buddy;
import buddy.BuddySuite;
using buddy.Should;

import node.Node;
import node.express.*;

class RequestSpec extends BuddySuite implements Buddy{
	public function new(){
		describe("RequestSpec",{
			var req : Request;

			it("RouteSpec",{
				true.should.be(true);
			});
		});
	}
}