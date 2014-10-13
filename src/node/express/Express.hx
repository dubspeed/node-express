package node.express;


extern class Application{
	public function set(name:String, value:String) : Void;

	@:overload(function(name:String):String{})
	@:overload(function(name:String):Bool{})
	public function get(name:String, callback : Request -> Response -> Void) : Void;
	public function enable(name:String):Void;
	public function enabled(name:String):Bool;
	public function disable(name:String):Void;
	public function disabled(name:String):Bool;

	@:overload(function(path:String, callback : Request -> Response -> Void) : Void{})
	@:overload(function(path:String, callback : Request -> Response -> Void, callback : Request -> Response -> Void):Void{})
	public function use(callback:Request -> Response -> Void):Void;

	public function engine(ext:String , callback : Request -> Response -> Void):Void;
	public function param(id:String, callback : Request -> Response -> String -> String -> Void):Void;
	public function all(path:String,callback : Request -> Response -> Void):Void;
	public function route(path:String):Void;
	public function render(view:String,callback : String -> String -> Void):Void;
	public function listen(pord:Int):Void;
	public function path(url:String):String;
	public function on(mount:String,callback:Request -> Void):Void;
	public var mountpath:String;
	public var locals :String;
}
