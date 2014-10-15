package ;

import buddy.Buddy;
import buddy.BuddySuite;
using buddy.Should;

import node.Node;
import node.express.*;

class RouterSpec extends BuddySuite implements Buddy{
	public function new(){
		describe("RouterSpec",{
			var router : Router;

			before({
				var express = Node.require("express");
				router = express.router();
			});

			it("RouterSpec use",{
				router.use(function(req,res,next){
				});
				true.should.be(true);
			});
			
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