module io;

import std.stdio;
import std.string;
import std.conv;

auto readString() {
	return readln().chomp;
}

auto readUInt() {
	try {
		return readString().to!uint;
	}
	catch (Exception e) {
		return 0;
	}
}

auto readTitle() {
	writeln("\n Enter a movile title!");
	return readString();
}

auto readNumber(string label) {
	writefln("\n Enter a %s number", label);
	return readUInt();
}

auto readChoice(string msg1, string msg2 = "abort") {
	writefln("\n Enter 1 to %s", msg1);
	writefln("Press Enter to %s", msg2);
	return readUInt() == 1;
}

auto readChoice(string[] msgs, string msg2 = "abort") {
	writeln();

	foreach(i, msg; msgs) {
		writefln("Enter %s to %s.", i+1, msg);
	}
	writefln("Press Enter to %s", msg2);
	return readUInt();
}

void printList(string header, string[] list) {
	writeln("\n", header);
	foreach(i, line; list) {
		writefln("\t%s. %s", i+1, line);
	}
	writeln();
}
