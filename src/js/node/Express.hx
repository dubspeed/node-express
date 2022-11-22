package js.node;

import haxe.extern.EitherType;
import js.node.express.Application.MiddlewareCB;
import js.Node;
import js.node.express.*;
import js.Syntax.code;

final __express:Dynamic = Node.require("express");

typedef RawOptions = {
	?inflate:Bool,
	?limit:EitherType<Int, String>,
	?type:Dynamic,
	?verify:Dynamic
}

typedef JsonOptions = {
	> RawOptions,
	?reviver:(key:Dynamic, value:Dynamic) -> Dynamic,
	?strict:Bool,
}

typedef RouterOptions = {
	?caseSensitive:Bool,
	?mergeParams:Bool,
	?strict:Bool
}

typedef StrictOptions = {
	?dotfiles:String,
	?etag:Bool,
	?extensions:Array<String>,
	?fallthrough:Bool,
	?immutable:Bool,
	?index:EitherType<Bool, String>,
	?lastModified:Bool,
	?maxAge:Int,
	?redirect:Bool,
	?setHeaders:(Response, Path, Dynamic) -> Void
}

typedef TextOptions = {
	> RawOptions,
	?defaultCharset:String,
}

typedef UrlEncodedOptions = {
	> RawOptions,
	?extended:Bool,
	?parameterLimit:Int,
}

extern class Express {
	static inline function express():Application {
		return __express();
	}

	static inline function json(?options:JsonOptions):MiddlewareCB {
		return __express.json(options);
	}

	static inline function raw(?options:RawOptions):MiddlewareCB {
		return __express.raw(options);
	}

	@:native("static")
	static inline function _static(root:String, ?options:StrictOptions):MiddlewareCB {
		return code("require({0}).static({1}, {2})", "express", root, options);
	}

	static inline function text(?options:TextOptions):MiddlewareCB {
		return __express.text(options);
	}

	static inline function urlencoded(?options:UrlEncodedOptions):MiddlewareCB {
		return __express.urlencoded(options);
	}

	static inline function Router(?options:RouterOptions):js.node.express.Router {
		return __express.Router(options);
	}
	// Router
}
