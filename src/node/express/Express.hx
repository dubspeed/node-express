package node.express;

typedef Request = Dynamic;
typedef Response = { 
	send : String -> Void
}


extern class Express{
	public function get(path:String, callback : Request -> Response -> Void) : Void;
	public function listen(port:Int) : Void;
}