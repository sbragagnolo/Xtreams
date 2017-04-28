seeking
-= anInteger
	self isPositionable ifFalse: [^super -= anInteger].
	position := self length - anInteger max: 0.
	^source -= anInteger