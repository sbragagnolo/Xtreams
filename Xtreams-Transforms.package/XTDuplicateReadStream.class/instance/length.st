seeking
length
	^self isPositionable
		ifFalse: [super length]
		ifTrue: [source length]