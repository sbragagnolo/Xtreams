seeking
-- anInteger
	^self isPositionable
		ifFalse: [super -- anInteger]
		ifTrue:
			[source -- anInteger.
			duplicate -- anInteger]