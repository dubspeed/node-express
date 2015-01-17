package ;

import buddy.Buddy;
import buddy.BuddySuite;
using buddy.Should;

import node.Node;
import node.express.*;

class RequestSpec extends BuddySuite implements Buddy{
	public function new(){
		describe("RequestSpec",{
			var req : Request;

			it("Request params",{
				req.params;
				true.should.be(true);
			});

			it("Request query",{
				req.query;
				true.should.be(true);
			});

			it("Request param",{
				req.param("name");
				true.should.be(true);
			});

			it("Request route",{
				req.route;
				true.should.be(true);
			});

			it("Request cookies",{
				req.cookies;
				true.should.be(true);
			});

			it("Request signedCookies",{
				req.signedCookies;
				true.should.be(true);
			});

			it("Request get",{
				req.get("content-type");
				true.should.be(true);
			});

			it("Request accepts",{
				req.accepts('html');
				true.should.be(true);
			});

			it("Request acceptsCharsets",{
				//
				req.acceptsCharsets("charset");
				true.should.be(true);
			});

			it("Request acceptsLanguages",{
				//
				req.acceptsLanguages("language");
				true.should.be(true);
			});

			it("Request acceptsEncodings",{
				//
				req.acceptsEncodings("encoding");
				true.should.be(true);
			});

			it("Request is",{
				req.is('html');
				true.should.be(true);
			});

			it("Request ip",{
				req.ip;
				true.should.be(true);
			});

			it("Request ips",{
				req.ips;
				true.should.be(true);
			});

			it("Request path",{
				req.path;
				true.should.be(true);
			});

			it("Request hostname",{
				req.hostname;
				true.should.be(true);
			});

			it("Request fresh",{
				req.fresh;
				true.should.be(true);
			});

			it("Request stale",{
				req.stale;
				true.should.be(true);
			});

			it("Request xhr",{
				req.xhr;
				true.should.be(true);
			});

			it("Request protocol",{
				req.protocol;
				true.should.be(true);
			});

			it("Request secure",{
				req.secure;
				true.should.be(true);
			});

			it("Request subdomains",{
				req.subdomains;
				true.should.be(true);
			});

			it("Request baseUrl",{
				req.baseUrl;
				true.should.be(true);
			});

			it("Request session",{
				req.session;
				true.should.be(true);
			});

		});
	}
}