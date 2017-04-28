*Xtreams-Terminals-primitives
readInto: buffer
	"Answer the number of bytes read"
	^self readInto: buffer startingAt: 1 count: buffer size