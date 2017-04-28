accessing
write: anInteger from: aSequenceableCollection at: startIndex
	destination replaceFrom: position + 1 to: position + anInteger with: aSequenceableCollection startingAt: startIndex.
	position := position + anInteger.
	position > length ifTrue: [length := position].
	^anInteger