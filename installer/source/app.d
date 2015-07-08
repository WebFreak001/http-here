import std.stdio;

import std.process;

import std.file;

void main()
{
	writeln("Creating HTTPHere in Program Files (x86)");
	mkdirRecurse("C:\\Program Files (x86)\\HTTPHere");
	
	writeln("Copying Files");
	copy("files\\http_here.exe", "C:\\Program Files (x86)\\HTTPHere\\http_here.exe");
	copy("files\\uninstall.reg", "C:\\Program Files (x86)\\HTTPHere\\uninstall.reg");
	copy("files\\libeay32.dll", "C:\\Program Files (x86)\\HTTPHere\\libeay32.dll");
	copy("files\\libevent.dll", "C:\\Program Files (x86)\\HTTPHere\\libevent.dll");
	copy("files\\ssleay32.dll", "C:\\Program Files (x86)\\HTTPHere\\ssleay32.dll");
	
	writeln("Adding Registry keys");
	executeShell("regedit /s install.reg");

	writeln("Installed");
}
