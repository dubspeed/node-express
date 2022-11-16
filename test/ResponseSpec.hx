package test;

import buddy.Buddy;
import buddy.BuddySuite;
using buddy.Should;

#if js
import js.Node;
import node.express.*;
#end

class ResponseSpec extends BuddySuite {
	public function new(){
		describe("ResponseSpec",{
			var app:Application;

			beforeEach({
				var express = Node.require("express");
				app = express();
			});

			it("ResponseSpec",{
				app.get("/", (req:Request, res:Response) -> {
					// ?
				});
				true.should.be(true);
			});
			it("Response Status",{
				app.get("/", (req:Request, res:Response) -> {
					res.status(404).end();
				});
				true.should.be(true);
			});
			it("Response set",{
				app.get("/", (req:Request, res:Response) -> {
					res.set('Content-Type', 'text/plain');
				});
				true.should.be(true);
			});
			it("Response get",{
				app.get("/", (req:Request, res:Response) -> {
					res.set('Content-Type','text/plain');
					res.get('Content-Type').should.be('text/plain');
				});
			});
			it("Response cookie",{
				app.get("/", (req:Request, res:Response) -> {
					res.cookie('name', 'tobi', { domain: '.example.com', path: '/admin', secure: true });
				});
				true.should.be(true);
			});

			it("Response clearCookie",{
				app.get("/", (req:Request, res:Response) -> {
					res.cookie('name', 'tobi', { path: '/admin' });
					res.clearCookie('name', { path: '/admin' });
				});
			});

			it("Response redirect",{
				app.get("/", (req:Request, res:Response) -> {
					res.redirect('/foo/bar');
				});
				true.should.be(true);
			});

			it("Response location",{
				app.get("/", (req:Request, res:Response) -> {
					res.location('/foo/bar');
				});
				true.should.be(true);
			});

			it("Response send",{
				app.get("/", (req:Request, res:Response) -> {
					res.send({ some: 'json' });
				});
				true.should.be(true);
			});

			it("Response json",{
				app.get("/", (req:Request, res:Response) -> {
					res.json(null);
				});
				true.should.be(true);
			});

			it("Response jsonp",{
				app.get("/", (req:Request, res:Response) -> {
					res.jsonp(null);
				});
				true.should.be(true);
			});

			it("Response type",{
				app.get("/", (req:Request, res:Response) -> {
					res.type('html');
				});
				true.should.be(true);
			});

			it("Response format",{
				app.get("/", (req:Request, res:Response) -> {
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
			});

			it("Response attachment",{
				app.get("/", (req:Request, res:Response) -> {
					res.attachment();
				});
				true.should.be(true);
			});

			it("Response sendFile",{
				app.get("/", (req:Request, res:Response) -> {
					res.sendFile("/home/hoge/hoge");
				});
				true.should.be(true);
			});

			it("Response sendStatus",{
				app.get("/", (req:Request, res:Response) -> {
					res.sendStatus(200);
				});
				true.should.be(true);
			});

			it("Response download",{
				app.get("/", (req:Request, res:Response) -> {
					res.download('/report-12345.pdf');
				});
				true.should.be(true);
			});

			it("Response links",{
				app.get("/", (req:Request, res:Response) -> {
					res.links({
						next: 'http://api.example.com/users?page=2',
						last: 'http://api.example.com/users?page=5'
				  });
				});
				true.should.be(true);
			});

			it("Response locals",{
				app.get("/", (req:Request, res:Response) -> {
					res.locals;
				});
				true.should.be(true);
			});

			it("Response render",{
				app.get("/", (req:Request, res:Response) -> {
					res.render('index',function(err,html){});
				});
				true.should.be(true);
			});

			it("Response vary",{
				app.get("/", (req:Request, res:Response) -> {
					res.vary('User-Agent');
				});
				true.should.be(true);
			});

			it("Response end",{
				app.get("/", (req:Request, res:Response) -> {
					res.end();
					res.status(404).end();
				});
				true.should.be(true);
			});

			it("Response headersSent",{
				app.get("/", (req:Request, res:Response) -> {
					res.headersSent;
				});
				true.should.be(true);
			});
		});
	}
}