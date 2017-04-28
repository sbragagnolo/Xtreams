accessing
write: anInteger from: aSequenceableCollection at: startIndex
	anInteger isZero ifTrue: [^0].
	destination at: position + 1 write: aSequenceableCollection startingAt: startIndex count: anInteger. 
	position := position + anInteger.
	^anInteger