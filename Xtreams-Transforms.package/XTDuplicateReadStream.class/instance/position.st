seeking
position
	^self isPositionable
		ifFalse: [super position]
		ifTrue: [source position]