package;

import buddy.BuddySuite;
import js.node.express.*;
import js.node.Express;

using buddy.Should;

class IntegrationSpec extends BuddySuite {
	public function new() {
		describe("Application spec", {
			var app:Application;

			beforeEach({
				app = Express.express();
			});

			it("Should use json middleware", {
				app.use(Express.json());
				app.listen(3012);
			});
		});
	}
}
