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


			it("Application set",{
				app.set("1","2");
				app.get("1").should.be("2");
			});

			it("Application get",{
				app.get("hello world",function(req,res){});
				true.should.be(true);
			});

			it("Application enable",{
				app.enable("test");
				app.get("test").should.be(true);
			})

			it("Application enabled",{
				app.enabled("test").should.be(false);
				app.enable("test");
				app.enabled("test").should.be(true);
			})

			it("Application disable",{
				app.enable("test");
				app.get("test").should.be(true);
				app.disable("test");
				app.get("test").should.be(false);
			})
			
			it("Application disabled", {
				app.disabled("test").should.be(true);
				app.enable("test");
				app.disabled("test").should.be(false);
				app.disable("test");
				app.disabled("test").should.be(true);
			})
		});
	}
}

