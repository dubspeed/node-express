package test;

import buddy.Buddy;
import buddy.BuddySuite;
using buddy.Should;

#if js
import js.Node;
import node.express.*;
#end

class RouterSpec extends BuddySuite {
	public function new(){
		describe("RouterSpec",{
			var router : Router;

			beforeEach({
				var express = Node.require("express");
				router = express.Router();
			});

			// Broken test
			// it("RouterSpec use",{
			// 	// router.use(function(req,res,next){
			// 	// 	next();
			// 	// });
			// 	true.should.be(true);
			// });
			
			it("RouterSpec param",{
				router.param('id', function (req, res, next, id) {
				});
				true.should.be(true);
  			});
  			
  			it("RouterSpec route",{
  				router.route('/users/:user_id');
  				true.should.be(true);
  			});

  			it("RouterSpec all",{
  				router.all('*',function(req,res){
  				});
  				true.should.be(true);
  			});
		});
	}
}