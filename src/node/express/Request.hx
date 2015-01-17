package node.express;

extern class Request {
	public var params:Dynamic;
	public var query:Dynamic;
	public function param(path:String):Dynamic;
	public var route:String;
	public var cookies:Dynamic;
	public var headers:Dynamic;
	public var signedCookies:Dynamic;
	public function get(type:String):Dynamic;
	public function accepts(type:String):Void;
	public function acceptsCharsets(charset:Dynamic):Dynamic;
	public function acceptsLanguages(language:Dynamic):Dynamic;
	public function acceptsEncodings(encodeings:Dynamic):Dynamic;
	public function is(type:String):Dynamic;
	public var ip:Dynamic;
	public var ips:Dynamic;
	public var path:String;
	public var hostname:Dynamic;
	public var fresh:Dynamic;
	public var stale:Dynamic;
	public var xhr:Dynamic;
	public var protocol:Dynamic;
	public var secure:Bool;
	public var subdomains:String;
	public var baseUrl:String;
	public var session:Dynamic;
}