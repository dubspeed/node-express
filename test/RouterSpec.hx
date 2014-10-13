package ;

import buddy.Buddy;
import buddy.BuddySuite;
using buddy.Should;

import node.Node;
import node.express.*;

class RouteSpec extends BuddySuite implements Buddy{
	public function new(){
		describe("RouteSpec",{
			var router : Router;

			before({
				var express = Node.require("express");
				route = express.router();
			});

			it("RouteSpec use",{
				router.use(function(req,res,next){
				});
				true.should.be(true);
			});
			it("RouteSpec param",{
				router.param('id', function (req, res, next, id) {
				});
				true.should.be(true);
  			});
  			it("RouteSpec route",{
  				router.route('/users/:user_id');
  				true.should.be(true);
  			});
  			it("RouteSpec all",{
  				router.all("*");
  				true.should.be(true);
  			});
		});
	}
}