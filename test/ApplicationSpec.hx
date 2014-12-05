package ;

import buddy.Buddy;
import buddy.BuddySuite;
using buddy.Should;

import node.Node;
import node.express.*;

class ApplicationSpec extends BuddySuite implements Buddy{
	public function new(){
		describe("Application spec",{
			var app : Application;

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
				app.enabled("test").should.be(true);
				//get -> String だがbool値とundefineも返す
			});

			it("Application enabled",{
				app.enabled("test").should.be(false);
				app.enable("test");
				app.enabled("test").should.be(true);
			});

			it("Application disable",{
				app.enable("test");
				app.enabled("test").should.be(true);
				app.disable("test");
				app.enabled("test").should.be(false);
			});
			
			it("Application disabled", {
				app.disabled("test").should.be(true);
				app.enable("test");
				app.disabled("test").should.be(false);
				app.disable("test");
				app.disabled("test").should.be(true);
			});

			it("Application use",{
				app.use("/hoge",function(res,req){});
				true.should.be(true);
			});

			it("Application engine",{
				app.engine("jade",Node.require("jade").__express);
				true.should.be(true);
			});

			it("Application param",{
				app.param('id',function(req,res,next,id){
				});
				true.should.be(true);
			});

			it("Application all",{
				app.all('*',function(req,res,next){
				});
				true.should.be(true);
			});

			it("Application route",{
				app.route('event');
				true.should.be(true);
			});

			it("Application locals",{
				app.locals;
				true.should.be(true);
			});

			it("Application render",{
				app.render("email",function(err,html){
				});
				true.should.be(true);
			});

			it("Application listen",{
				app.listen(3000);
				true.should.be(true);
			});

			it("Application path",{
				app.path("/use");
				true.should.be(true);
			});

			it("Application mountpath",{
				app.mountpath;
				true.should.be(true);
			});

			it("Application onmount",{
				app.on("mount",function(parent){
				});
				true.should.be(true);
			});
		});
	}
}

