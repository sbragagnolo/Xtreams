private
nextBytesFrom: aByteStrngStream do: aTwoArgBlock
	"This algorithm tolerates an encoding that uses MORE bytes than are necessary 
	for the size of the character value. For example, a 16-bit character needs three
	bytes, but all characters with widths 0 to 16 can be encoded in three bytes.
	The bytes 16rFE and 16rFF can never occur in any valid UTF-8 encoding."

	| byte1 sizeInBytes signatures |
	byte1 := self nextByteFrom: aByteStrngStream.
	byte1 < 2r10000000		"1-byte character"
		ifTrue: [ sizeInBytes := 1 ]
		ifFalse: [
			signatures := #(nil 2r11000000 2r11100000 2r11110000 2r11111000 2r11111100 2r11111110).
			sizeInBytes := (2 to: 6) 
				detect: [ :index | (signatures at: index) = (byte1 bitAnd: (signatures at: index + 1))]
				ifNone: [ ^self badlyFormedUTF8Stream ].
			byte1 := byte1 bitAnd: (signatures at: sizeInBytes + 1) bitInvert].
	^aTwoArgBlock value: byte1 value: sizeInBytes
