package js.node.express;

import js.node.http.IncomingMessage;
import js.node.express.Application.BaseOrArray;
import haxe.extern.EitherType;

typedef RangeOptions = {combine:Bool};

/**
 * Request object is based on Nodes IncomingMessage class
 */
extern class Request extends IncomingMessage {
	var app:Application;
	var baseUrl:Path;
	var body:Dynamic;
	var cookies:Dynamic;
	var fresh:Bool;
	var hostname:String;
	var ip:String;
	var ips:Array<String>;
	var originalUrl:String;
	var params:Dynamic;
	var path:String;
	var protocol:String;
	var query:Dynamic;
	var res:Response;
	var route:String;
	var secure:Bool;
	var signedCookies:Dynamic;
	var stale:Bool;
	var subdomains:Array<String>;
	var xhr:Bool;
	function accepts(type:BaseOrArray<String>):EitherType<String, Bool>;
	function acceptsCharsets(charset:BaseOrArray<String>):EitherType<String, Bool>;
	function acceptsEncodings(encodeings:BaseOrArray<String>):EitherType<String, Bool>;
	function acceptsLanguages(language:BaseOrArray<String>):EitherType<String, Bool>;
	function get(type:String):Dynamic;
	function is(type:String):EitherType<String, Bool>;
	function range(size:Int, ?options:RangeOptions):Dynamic;

	@:deprecated
	function param(name:String, ?defaultValue:Dynamic):Dynamic;
}
