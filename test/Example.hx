package;

import js.lib.RegExp;
import js.node.Express;
import js.node.express.*;

function logger(req:Request, res:Response, next:() -> Void) {
	trace("Req:", req.ip, req.route, req.body);
	next();
}

class Example {
	static function main() {
		final app = Express.express();

		app.use(logger);

		app.get([new RegExp("/abc|/xyz"), "/", "/ha?xe"], [
			(req:Request, res:Response, next:() -> Void) -> {
				trace("Doing some middlware thingy");
				next();
			},

			(req:Request, res:Response) -> {
				res.json({"I am": "a C64"});
			}
		]);

		app.use(Express.json());

		app.post("/echo", (req:Request, res:Response, next:() -> Void) -> {
			res.status(200).json(req.body);
			next();
		});
		app.listen(4711, () -> {
			trace("Example app listing on port 4711");
		});
	}
}
