seeking
-- anInteger
	^self isPositionable
		ifFalse: [super -- anInteger]
		ifTrue:
			[destination -- anInteger.
			duplicate -- anInteger]