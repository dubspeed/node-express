package test;

import js.node.Express;
import haxe.xml.Parser.XmlParserException;
import js.node.express.Application;
import buddy.Buddy;
import buddy.BuddySuite;
import js.Node;

using buddy.Should;

class ApplicationSpec extends BuddySuite {
	public function new() {
		describe("Application spec", {
			var app:Application;

			beforeEach({
				app = Express.express();
			});

			it("Application set & get", {
				app.set("1", "2");
				app.get("1").should.be("2");
			});

			it("Application get", {
				app.get("hello world", function(req, res) {});
				true
				.should.be(true);
			});

			it("Application enable / enabled / disable / disabled", {
				app.enabled("test").should.be(false);
				app.enable("test");
				app.enabled("test").should.be(true);
				app.enable("test");
				app.enabled("test").should.be(true);
				app.enable("test");
				app.enabled("test").should.be(true);
				app.disable("test");
				app.enabled("test").should.be(false);
				app.disabled("test").should.be(true);
				app.enable("test");
				app.disabled("test").should.be(false);
				app.disable("test");
				app.disabled("test").should.be(true);
			});

			it("Application use", {
				app.use("/hoge", function(res, req) {});
				true
				.should.be(true);
			});

			it("Application engine", {
				app.engine("jade", Node.require("jade").__express);
				true
				.should.be(true);
			});

			it("Application param", {
				app.param('id', function(req, res, next, id) {});
				true
				.should.be(true);
			});

			it("Application all", {
				app.all('*', function(req, res, next) {});
				true
				.should.be(true);
			});

			it("Application route", {
				app.route('event');
				true
				.should.be(true);
			});

			it("Application locals", {
				app.locals;
				true
				.should.be(true);
			});

			it("Application render", {
				app.set("view engine", "jade");
				app.render("email", function(err, html) {});
				true
				.should.be(true);
			});

			it("Application listen", {
				app.listen(9000);
				app.listen(9001, () -> {});
				app.listen(9002, "localhost", () -> {});
				app.listen(9003, "localhost", 42, () -> {});
				app.listen({port: 9004, host: "localhost"}, () -> {});
				true
				.should.be(true);
			});

			it("Application path", {
				app.path("/use");
				true
				.should.be(true);
			});

			it("Application mountpath", {
				app.mountpath;
				true
				.should.be(true);
			});

			it("Application onmount", {
				app.on("mount", function(parent) {});
				true
				.should.be(true);
			});
		});
	}
}
