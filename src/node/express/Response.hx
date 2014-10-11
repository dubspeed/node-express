package node.express;


typedef Response = { 
	send : String -> Void,
	json : Dynamic -> Void,
	render : String -> Void,
	status : Int->Response,
	redirect : String->Void
}
