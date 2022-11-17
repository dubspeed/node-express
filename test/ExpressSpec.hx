package test;

import js.node.Express;
import js.node.express.*;
import buddy.BuddySuite;

using buddy.Should;

class ExpressSpec extends BuddySuite {
	public function new() {
		describe("Express spec", {
			var app:Application;

			beforeEach({
				app = Express.express();
			});

			it("Express.json()", {
				app.use(Express.json([]));
				true.should.be(true);
			});

			it("Express.raw()", {
				app.use(Express.raw([]));
				true.should.be(true);
			});
			it("Express.static()", {
				app.use(Express._static([]));
				true.should.be(true);
			});
			it("Express.text)", {
				app.use(Express.text([]));
				true.should.be(true);
			});
			it("Express.urlencoded()", {
				app.use(Express.urlencoded([]));
				true.should.be(true);
			});
			it("Express.Router()", {
				var router: Router = Express.Router([]);
				true.should.be(true);
			});
		});
	}
}
