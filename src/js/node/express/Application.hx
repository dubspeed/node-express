package js.node.express;

import js.lib.RegExp;
import haxe.extern.EitherType;

// Parameters like `path` or `callback` can be of type T or [T]
typedef BaseOrArray<T> = EitherType<T, Array<T>>;

// any of those 4 types
typedef EitherType4<A, B, C, D> = EitherType<EitherType<EitherType<A, B>, C>, D>;

// usually (Void) -> Void, in Router context also (String) -> Void
typedef NextFunc = EitherType<() -> Void, (String) -> Void>;

/**
 * Middleware Callbacks
 * @see https://expressjs.com/en/api.html#middleware-callback-function-examples
 */
typedef MiddlewareCB = BaseOrArray<EitherType4<(Request, Response) -> Void, (Request, Response, NextFunc) -> Void, Router, Application>>;

/**
 * Path can be String, RegExp, [String], [RegExp] or even [String, RegExp]
 * @see https://expressjs.com/en/api.html#path-examples
 */
typedef Path = BaseOrArray<EitherType<String, RegExp>>;

extern class Application {
	var mountpath:Path;
	var locals:Dynamic;

	@:overload(function(name:String):String {})
	@:overload(function(name:String):Bool {})
	@:overload(function(name:String):EitherType<Float, Int> {})
	@:overload(function(name:String):Dynamic {})
	function get(path:Path, callback:MiddlewareCB, ...rest:MiddlewareCB):Void;

	@:overload(function(name:String):String {})
	@:overload(function(name:String):Bool {})
	@:overload(function(name:String):EitherType<Float, Int> {})
	@:overload(function(name:String):Dynamic {})
	function set(name:String, value:String):Application;

	function post(path:Path, ...callback:MiddlewareCB):Void;
	function enable(name:String):Application;
	function enabled(name:String):Bool;
	function disable(name:String):Application;
	function disabled(name:String):Bool;

	@:overload(function(?path:Path, func:MiddlewareCB, ...callback:MiddlewareCB):Void {})
	function use(callback:MiddlewareCB):Application;

	function engine(ext:String, ...callback:MiddlewareCB):Application;
	function param(id:String, callback:Request->Response->String->String->Void):Application;
	function all(?path:Path, ...callback:MiddlewareCB):Application;
	function route(path:Path):Router;

	@:overload(function(view:String, callback:(Dynamic, String) -> Void):Void {})
	function render(view:String, locals:Dynamic, callback:(Dynamic, String) -> Void):Void;

	/**
	 * `listen` adheres to nodeJs `http.server.listen()`
	 * @see https://github.com/HaxeFoundation/hxnodejs/blob/master/src/js/node/net/Server.hx
	 */
	@:overload(function(port:Int, hostname:String, backlog:Int, ?callback:Void->Void):js.node.net.Server {})
	@:overload(function(handle:EitherType<Dynamic, {fd:Int}>, ?callback:Void->Void):js.node.net.Server {})
	@:overload(function(port:Int, ?callback:Void->Void):js.node.net.Server {})
	@:overload(function(port:Int, backlog:Int, ?callback:Void->Void):js.node.net.Server {})
	@:overload(function(port:Int, hostname:String, ?callback:Void->Void):js.node.net.Server {})
	function listen(options:EitherType<js.node.net.Server.ServerListenOptionsTcp, js.node.net.Server.ServerListenOptionsUnix>,
		?callback:Void->Void):js.node.net.Server;

	function path(url:String):String;
	function on(mount:String, callback:(Application) -> Void):Void;
}
