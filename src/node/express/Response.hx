package node.express;


typedef Response = { 
	send : String -> Void,
	json : Dynamic -> Void,
	status : Int->Response
}
