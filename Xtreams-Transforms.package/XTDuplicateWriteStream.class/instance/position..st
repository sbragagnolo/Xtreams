seeking
position: anInteger
	^self isPositionable
		ifFalse: [super position: anInteger]
		ifTrue:
			[destination position: anInteger.
			duplicate position: anInteger]