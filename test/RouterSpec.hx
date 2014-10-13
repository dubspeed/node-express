package ;

import buddy.Buddy;
import buddy.BuddySuite;
using buddy.Should;

import node.Node;
import node.express.Express;

class RouteSpec extends BuddySuite implements Buddy{
	public function new(){
		describe("RouteSpec",{
			var route : Route;

			before({
				var express = Node.require("express");
				route = express.router();
			});

			it("RouteSpec",{
				true.should.be(true);
			});
		});
	}
}