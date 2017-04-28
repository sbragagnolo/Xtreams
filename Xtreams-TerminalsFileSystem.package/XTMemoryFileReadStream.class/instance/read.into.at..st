accessing
read: anInteger into: aSequenceableCollection at: startIndex
	| count |
	count := source at: position + 1 read: aSequenceableCollection startingAt: startIndex count: anInteger.
	position := position + count.
	count < anInteger ifTrue: [(Incomplete on: aSequenceableCollection count: count at: startIndex) raise].
	^anInteger