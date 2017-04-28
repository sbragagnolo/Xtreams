*Xtreams-TerminalsFileSystem-primitives
readInto: buffer startingAt: index count: num
	"Answer the number of bytes read"
	self assureOpen.
	^Primitives read: id into: buffer startingAt: index count: num