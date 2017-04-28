seeking
position
	^self isPositionable
		ifFalse: [super position]
		ifTrue: [destination position]