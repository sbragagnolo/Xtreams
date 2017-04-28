seeking
length
	^self isPositionable
		ifFalse: [super length]
		ifTrue: [destination length]