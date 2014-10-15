package ;

import buddy.Buddy;
import buddy.BuddySuite;
using buddy.Should;

import node.Node;
import node.express.*;

class ResponseSpec extends BuddySuite implements Buddy{
	public function new(){
		describe("ResponseSpec",{
			var res : Response;

			it("ResponseSpec",{
				true.should.be(true);
			});
			it("Response Status",{
				res.status(404).end();
				true.should.be(true);
			});
			it("Response set",{
				res.set('Content-Type', 'text/plain');
				true.should.be(true);
			});
			it("Response get",{
				res.set('Content-Type','text/plain');
				res.get('Content-Type').should.be('text/plain');
			});
			it("Response cookie",{
				res.cookie('name', 'tobi', { domain: '.example.com', path: '/admin', secure: true });
				true.should.be(true);
			});

			it("Response clearCookie",{
				res.cookie('name', 'tobi', { path: '/admin' });
				res.clearCookie('name', { path: '/admin' });
			});

			it("Response redirect",{
				res.redirect('/foo/bar');
				true.should.be(true);
			});

			it("Response location",{
				res.location('/foo/bar');
				true.should.be(true);
			});

			it("Response send",{
				res.send({ some: 'json' });
				true.should.be(true);
			});

			it("Response json",{
				res.json(Null);
				true.should.be(true);
			});

			it("Response jsonp",{
				res.jsonp(Null);
				true.should.be(true);
			});

			it("Response type",{
				res.type('html');
				true.should.be(true);
			});

			it("Response format",{
				res.format({
  					'text/plain': function(){
    				res.send('hey');
  					},

  					'text/html': function(){
    					res.send('<p>hey</p>');
  					},

  					'application/json': function(){
    					res.send({ message: 'hey' });
  					},

  					'default': function() {
   						// log the request and respond with 406
    					res.status(406).send('Not Acceptable');
  					}
				});
			});

			it("Response attachment",{
				res.attachment();
				true.should.be(true);
			});

			it("Response sendFile",{
				res.sendFile("/home/hoge/hoge");
				true.should.be(true);
			});

			it("Response sendStatus",{
				res.sendStatus(200);
				true.should.be(true);
			});

			it("Response download",{
				res.download('/report-12345.pdf');
				true.should.be(true);
			});

			it("Response links",{
				res.links({
  					next: 'http://api.example.com/users?page=2',
  					last: 'http://api.example.com/users?page=5'
				});
				true.should.be(true);
			});

			it("Response locals",{
				res.locals;
				true.should.be(true);
			});

			it("Response render",{
				res.render('index',function(err,html){});
				true.should.be(true);
			});

			it("Response vary",{
				res.vary('User-Agent');
				true.should.be(true);
			});

			it("Response end",{
				res.end();
				res.status(404).end();
				true.should.be(true);
			});

			it("Response headersSent",{
				res.headersSent;
				true.should.be(true);
			});
		});
	}
}