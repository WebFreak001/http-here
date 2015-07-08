import vibe.d;

import std.random;
import std.process;
import std.conv;

shared static this()
{
	string[] args;
	finalizeCommandLineOptions(&args);

	auto settings = new HTTPServerSettings;
	settings.port = cast(short) uniform(1000, short.max);
	settings.bindAddresses = ["::1", "127.0.0.1"];

	auto router = new URLRouter;

	router.get("*", serveStaticFiles(args[1]));

	listenHTTP(settings, router);
	
	executeShell("start http://127.0.0.1:" ~ to!string(settings.port));
}
