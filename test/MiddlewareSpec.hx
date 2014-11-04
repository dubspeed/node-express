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
				var express = Node.require("express");
				app = express();
			});

			it("Middleware app use",{
				var cookieparser = Node.require("cookie-parser");
				app.use(cookieparser);
				true.should.be(true);
			});
			
		});
	}
}