package node.express;

typedef Request = Dynamic;
typedef Response = { 
	send : String -> Void,
	json : Dynamic -> Void,
	status : Int->Response
}


extern class Express{
	public function get(path:String, callback : Request -> Response -> Void) : Void;
	public function listen(port:Int) : Void;
}