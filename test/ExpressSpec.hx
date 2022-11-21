package test;

import js.node.express.Application.MiddlewareCB;
import js.node.express.Application.NextFunc;
import js.node.Express;
import js.node.express.*;
import buddy.BuddySuite;

using buddy.Should;

typedef Mwtype = (Request, Response, NextFunc) -> Void;

class ExpressSpec extends BuddySuite {
	public function new() {
		describe("Express spec", {
			var app:Application;

			beforeEach({
				app = Express.express();
			});

			it("Express.json()", {
				final withoutParams:MiddlewareCB = Express.json();
				final withParams:MiddlewareCB = Express.json({
					"inflate": true
				});
				withoutParams.should.not.be(null);
				withParams.should.not.be(null);

				app.use(withoutParams);
				app.use(withParams);
			});

			it("Express.raw()", {
				final withoutParams:MiddlewareCB = Express.raw();
				final withParams:MiddlewareCB = Express.raw({
					"type": "application/octet-stream"
				});
				withoutParams.should.not.be(null);
				withParams.should.not.be(null);

				app.use(withoutParams);
				app.use(withParams);
			});
			it("Express.static()", {
				final withoutParams:MiddlewareCB = Express._static("/www");
				final withParams:MiddlewareCB = Express._static("/www", {
					"etag": true
				});
				withoutParams.should.not.be(null);
				withParams.should.not.be(null);

				app.use(withoutParams);
				app.use(withParams);
			});
			it("Express.text()", {
				final withoutParams:MiddlewareCB = Express.text();
				final withParams:MiddlewareCB = Express.text({
					"defaultCharset": "utf-8"
				});
				withoutParams.should.not.be(null);
				withParams.should.not.be(null);

				app.use(withoutParams);
				app.use(withParams);
			});
			it("Express.urlencoded()", {
				// withoutParams warns: body-parser deprecated undefined extended: provide extended option
				final withoutParams:MiddlewareCB = Express.urlencoded();
				final withParams:MiddlewareCB = Express.urlencoded({
					"extended": true
				});
				withoutParams.should.not.be(null);
				withParams.should.not.be(null);

				app.use(withoutParams);
				app.use(withParams);
			});
			it("Express.Router()", {
				var router:Router = Express.Router({
					"mergeParams": false
				});
				app.use("/foo", router);
			});
		});
	}
}
