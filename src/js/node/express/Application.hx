package js.node.express;

import haxe.extern.EitherType;

extern class Application {
	function set(name:String, value:String):Void;

	@:overload(function(name:String):String {})
	@:overload(function(name:String):Bool {})
	function get(name:String, callback:Request->Response->Void):Void;
	function post(name:String, callback:Request->Response->Void):Void;
	function enable(name:String):Void;
	function enabled(name:String):Bool;
	function disable(name:String):Void;
	function disabled(name:String):Bool;

	@:overload(function(option:Dynamic):Dynamic {})
	@:overload(function(?path:Dynamic, ?func:Dynamic, callback:Dynamic):Dynamic {})
	@:overload(function(path:String, callback:Request->Response->Void):Void {})
	@:overload(function(path:String, callback:Request->Response->Void, callback:Request->Response->Void):Void {})
	function use(callback:Request->Response->Void):Void;

	function engine(ext:String, callback:Request->Response->Void):Void;
	function param(id:String, callback:Request->Response->String->String->Void):Void;
	function all(path:String, callback:Request->Response->(Void->Void)->Void):Void;
	function route(path:String):Void;
	function render(view:String, callback:String->String->Void):Void;
	
	/**
	 * @see https://github.com/HaxeFoundation/hxnodejs/blob/master/src/js/node/net/Server.hx
	 */
	@:overload(function(port:Int, hostname:String, backlog:Int, ?callback:Void->Void):Void {})
	@:overload(function(handle:EitherType<Dynamic, {fd:Int}>, ?callback:Void->Void):Void {})
	@:overload(function(port:Int, ?callback:Void->Void):Void {})
	@:overload(function(port:Int, backlog:Int, ?callback:Void->Void):Void {})
	@:overload(function(port:Int, hostname:String, ?callback:Void->Void):Void {})
	function listen(options:EitherType<js.node.net.Server.ServerListenOptionsTcp, js.node.net.Server.ServerListenOptionsUnix>, ?callback:Void->Void):Void;

	function path(url:String):String;
	function on(mount:String, callback:Request->Void):Void;
	var mountpath:String;
	var locals:String;
}
