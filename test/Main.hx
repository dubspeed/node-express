package ;

import buddy.Buddy;
import buddy.BuddySuite;
using buddy.Should;

import node.Node;
import node.express.Express;

class Main extends BuddySuite implements Buddy{
	public function new(){
		describe("Express spec",{
			var app : Express;

			before({
				var express = Node.require("express");
				app = express();
			});


			it("Express set",{
				app.set("1","2");
				app.get("1").should.be("2");
			});

			it("Express get",{
				app.get("hello world",function(req,res){});
				true.should.be(true);
			});
		});
	}
}

