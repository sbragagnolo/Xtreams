private
streamingWrite: anInteger from: aReadStream

	writePosition + anInteger <= cache size ifFalse: [self growBy: anInteger].
	aReadStream read: anInteger into: cache at: writePosition + 1.
	writePosition := writePosition + anInteger.
	writePosition > dataLength ifTrue: [dataLength := writePosition].
	^anInteger