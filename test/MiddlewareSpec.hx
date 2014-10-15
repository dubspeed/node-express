package ;

import buddy.Buddy;
import buddy.BuddySuite;
using buddy.Should;

import node.Node;
import node.express.*;

class MiddlewareSpec extends BuddySuite implements Buddy{
	public function new(){
		describe("RouteSpec",{
			var middle : Middleware;

			it("MiddlewareSpec",{
				true.should.be(true);
			});
		});
	}
}