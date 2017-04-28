*Xtreams-TerminalsFileSystem-primitives
seekTo: anInteger
	self assureOpen.
	^Primitives setPosition: id to: anInteger