accessing
decodeFrom: aReadStream
	"^<Character>
	Decode the next byte(s) from the encoded stream, and answer the character.
	This is the reverse of #nextPut:on: -- 	see the class comment for explanation."

	| code |
	self nextBytesFrom: aReadStream do: [ :byte1code :sizeInBytes |
		code := byte1code.
		sizeInBytes - 1 timesRepeat: [
			code := (code bitShift: 6) + ((self nextByteFrom: aReadStream) bitAnd: 2r00111111) ] ].
	^Character withValue: code
