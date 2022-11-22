package test;

import js.node.express.*;
import buddy.BuddySuite;
import js.Node;
import node.express.*;

using buddy.Should;

class RequestSpec extends BuddySuite {
	public function new() {
		describe("RequestSpec", {
			var app:Application;

			beforeEach({
				var express = Node.require("express");
				app = express();
			});

			it("Request params", {
				app.get("/", (req:Request, res:Response) -> {
					req.params;
				});
				true
				.should.be(true);
			});

			it("Request query", {
				app.get("/", (req:Request, res:Response) -> {
					req.query;
				});
				true
				.should.be(true);
			});

			it("Request param", {
				app.get("/", (req:Request, res:Response) -> {
					req.param("name");
				});
				true
				.should.be(true);
			});

			it("Request route", {
				app.get("/", (req:Request, res:Response) -> {
					req.route;
				});
				true
				.should.be(true);
			});

			it("Request cookies", {
				app.get("/", (req:Request, res:Response) -> {
					req.cookies;
				});
				true
				.should.be(true);
			});

			it("Request signedCookies", {
				app.get("/", (req:Request, res:Response) -> {
					req.signedCookies;
				});
				true
				.should.be(true);
			});

			it("Request get", {
				app.get("/", (req:Request, res:Response) -> {
					req.get("content-type");
				});
				true
				.should.be(true);
			});

			it("Request accepts", {
				app.get("/", (req:Request, res:Response) -> {
					req.accepts('html');
				});
				true
				.should.be(true);
			});

			it("Request acceptsCharsets", {
				app.get("/", (req:Request, res:Response) -> {
					req.acceptsCharsets("charset");
				});
				true
				.should.be(true);
			});

			it("Request acceptsLanguages", {
				app.get("/", (req:Request, res:Response) -> {
					req.acceptsLanguages("language");
				});
				true
				.should.be(true);
			});

			it("Request acceptsEncodings", {
				app.get("/", (req:Request, res:Response) -> {
					req.acceptsEncodings("encoding");
				});
				true
				.should.be(true);
			});

			it("Request is", {
				app.get("/", (req:Request, res:Response) -> {
					req.is('html');
				});
				true
				.should.be(true);
			});

			it("Request ip", {
				app.get("/", (req:Request, res:Response) -> {
					req.ip;
				});
				true
				.should.be(true);
			});

			it("Request ips", {
				app.get("/", (req:Request, res:Response) -> {
					req.ips;
				});
				true
				.should.be(true);
			});

			it("Request path", {
				app.get("/", (req:Request, res:Response) -> {
					req.path;
				});
				true
				.should.be(true);
			});

			it("Request hostname", {
				app.get("/", (req:Request, res:Response) -> {
					req.hostname;
				});
				true
				.should.be(true);
			});

			it("Request fresh", {
				app.get("/", (req:Request, res:Response) -> {
					req.fresh;
				});
				true
				.should.be(true);
			});

			it("Request stale", {
				app.get("/", (req:Request, res:Response) -> {
					req.stale;
				});
				true
				.should.be(true);
			});

			it("Request xhr", {
				app.get("/", (req:Request, res:Response) -> {
					req.xhr;
				});
				true
				.should.be(true);
			});

			it("Request protocol", {
				app.get("/", (req:Request, res:Response) -> {
					req.protocol;
				});
				true
				.should.be(true);
			});

			it("Request secure", {
				app.get("/", (req:Request, res:Response) -> {
					req.secure;
				});
				true
				.should.be(true);
			});

			it("Request subdomains", {
				app.get("/", (req:Request, res:Response) -> {
					req.subdomains;
				});
				true
				.should.be(true);
			});

			it("Request baseUrl", {
				app.get("/", (req:Request, res:Response) -> {
					req.baseUrl;
				});
				true
				.should.be(true);
			});
		});
	}
}
