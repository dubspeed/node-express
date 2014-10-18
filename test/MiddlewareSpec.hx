package ;

import buddy.Buddy;
import buddy.BuddySuite;
using buddy.Should;

import node.Node;
import node.express.*;

class MiddlewareSpec extends BuddySuite implements Buddy{
	public function new(){
		describe("Middleware Spec",{
			var app : Application;

			before({
				app = Node.require("express");
			});

			it("Middleware app use",{
				app.use(Node.require("express").static('public'));
				true.should.be(true);
			});
			
		});
	}
}