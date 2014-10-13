package ;

import buddy.Buddy;
import buddy.BuddySuite;
using buddy.Should;

import node.Node;
import node.express.*;

class ResponseSpec extends BuddySuite implements Buddy{
	public function new(){
		describe("ResponseSpec",{
			var res : Response;

			it("ResponseSpec",{
				true.should.be(true);
			});
		});
	}
}