package js.node.express;

import js.node.express.Application.Path;
import js.node.express.Request;
import js.node.express.Application.NextFunc;
import haxe.extern.EitherType;
import js.node.express.Application.MiddlewareCB;

typedef RouterParamCB = EitherType<EitherType<(Request, Response) -> Void, (Request, Response, NextFunc) -> Void>,
	(Request, Response, NextFunc, String) -> Void>;

extern class Router {
	function all(path:Path, callback:MiddlewareCB, ...rest:MiddlewareCB):Void;
	function param(name:String, callback:RouterParamCB):Void;
	function route(path:Path):Void;
	function use(?path:String, callback:MiddlewareCB, ...rest:MiddlewareCB):Void;

	function get(path:Path, callback:MiddlewareCB, ...rest:MiddlewareCB):Void;
	function head(path:Path, callback:MiddlewareCB, ...rest:MiddlewareCB):Void;
	function post(path:Path, callback:MiddlewareCB, ...rest:MiddlewareCB):Void;
	function put(path:Path, callback:MiddlewareCB, ...rest:MiddlewareCB):Void;
	function delete(path:Path, callback:MiddlewareCB, ...rest:MiddlewareCB):Void;
	function connect(path:Path, callback:MiddlewareCB, ...rest:MiddlewareCB):Void;
	function options(path:Path, callback:MiddlewareCB, ...rest:MiddlewareCB):Void;
	function trace(path:Path, callback:MiddlewareCB, ...rest:MiddlewareCB):Void;
	function patch(path:Path, callback:MiddlewareCB, ...rest:MiddlewareCB):Void;
}
