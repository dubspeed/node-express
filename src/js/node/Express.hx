package js.node;

import js.Node;
import js.node.express.*;
import js.Syntax.code;

final __express: Dynamic= Node.require("express");

extern class Express{
	static inline function express(): Application {
		return __express();	
	}
	
	static inline function json(options:Dynamic): (Request, Response) -> Void {
		return __express.json;
	}

	static inline function raw(options:Dynamic): (Request, Response) -> Void {
		return __express.raw;
	}

	@:native("static")
	static inline function _static(options:Dynamic): (Request, Response) -> Void {
		return code("require({0}).static", "express");
	}

	static inline function text(options:Dynamic): (Request, Response) -> Void {
		return __express.text;
	}
	
	static inline function urlencoded(options:Dynamic): (Request, Response) -> Void {
		return __express.urlencoded;
	}

	static inline function Router(options:Dynamic): js.node.express.Router {
		return __express.Router;
	}

// Router
}
