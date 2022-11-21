package js.node;

import js.node.express.Application.MiddlewareCB;
import js.Node;
import js.node.express.*;
import js.Syntax.code;

final __express:Dynamic = Node.require("express");

extern class Express {
	static inline function express():Application {
		return __express();
	}

	static inline function json(?options:Dynamic):MiddlewareCB {
		return __express.json(options);
	}

	static inline function raw(?options:Dynamic):MiddlewareCB {
		return __express.raw(options);
	}

	@:native("static")
	static inline function _static(root:String, ?options:Dynamic):MiddlewareCB {
		return code("require({0}).static({1}, {2})", "express", root, options);
	}

	static inline function text(?options:Dynamic):MiddlewareCB {
		return __express.text(options);
	}

	static inline function urlencoded(?options:Dynamic):MiddlewareCB {
		return __express.urlencoded(options);
	}

	static inline function Router(?options:Dynamic):js.node.express.Router {
		return __express.Router(options);
	}
	// Router
}
