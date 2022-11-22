package js.node.express;

import haxe.extern.EitherType;
import js.node.express.Application.BaseOrArray;
import js.node.http.ServerResponse;

typedef CookieOptions = {
	?domain:String,
	?encode:(Dynamic) -> String,
	?expires:Date,
	?httpOnly:Bool,
	?maxAge:Int,
	?path:String,
	?priority:String,
	?secure:Bool,
	?signed:Bool,
	?sameSite:EitherType<Bool, String>
}

typedef FileOptions = {
	?maxAge:Int,
	?root:String,
	?lastModified:EitherType<String, Bool>,
	?headers:Dynamic,
	?dotfiles:String,
	?acceptRanges:Bool,
	?cacheControl:Bool,
	?immutable:Bool
}

/**
 * Response extends Node`s ServerResponse
 */
extern class Response extends ServerResponse {
	var app:Application;
	var locals:Dynamic;
	var req:Request;
	function append(field:String, value:BaseOrArray<String>):Void;
	function attachment(?filename:String):Void;
	function cookie(name:String, value:Dynamic, ?options:CookieOptions):Void;
	function clearCookie(name:String, option:CookieOptions):Void;
	function download(path:String, ?filename:String, ?options:FileOptions, ?fn:(err:Dynamic) -> Void):Void;
	function format(option:Dynamic):Response;
	function get(type:String):String;
	function json(body:Dynamic):Response;
	function jsonp(body:Dynamic):Response;
	function links(links:Dynamic):Response;
	function location(path:String):Response;
	function redirect(?status:Int, path:String):Response;
	function render(view:String, ?locals:Dynamic, ?Callback:(err:Dynamic, html:String) -> Void):Void;
	function send(option:Dynamic):Response;
	function sendFile(path:String, ?option:FileOptions, ?fn:(err:Dynamic) -> Void):Void;
	function sendStatus(statusCode:Int):Response;
	function set(name:String, value:String):Response;
	function status(status:Int):Response;
	function type(type:String):Response;
	function vary(option:String):Response;
}
