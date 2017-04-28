seeking
position: anInteger
	^self isPositionable
		ifFalse: [super position: anInteger]
		ifTrue:
			[source position: anInteger.
			duplicate position: anInteger]