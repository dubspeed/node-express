package node.express;


extern class Express{
	public function set(name:String, value:String) : Void;

	@:overload(function(name:String):String{})
	@:overload(function(name:String):Bool{})
	public function get(name:String, callback : Request -> Response -> Void) : Void;
	//get -> String だがbool値とundefineも返す
	public function post(path:String, callback : Request -> Response -> Void) : Void;

	public function all(path:String, callback : Request -> Response -> (Void->Void) -> Void) : Void;

	public function listen(port:Int) : Void;

	public function enable(name:String):Void;
	public function enabled(name:String):Bool;
	public function disable(name:String):Void;
	public function disabled(name:String):Bool;
	public function json(options:Array<String>):Void;
}
