package test;

import js.node.express.Application;
import buddy.BuddySuite;
import js.Node;

using buddy.Should;


class MiddlewareSpec extends BuddySuite {
	public function new() {
		describe("Middleware Spec", {
			var app:Application;

			beforeEach({
				var express = Node.require("express");
				app = express();
			});

			it("Middleware app use", {
				var cookieparser = Node.require("cookie-parser");
				app.use(cookieparser);
				true
				.should.be(true);
			});
		});
	}
}
