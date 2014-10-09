package node.express;


extern class Express{
	public function set(name:String, value:String) : Void;

	@:overload(function(name:String):String{})
	public function get(name:String, callback : Request -> Response -> Void) : Void;

	public function listen(port:Int) : Void;
}