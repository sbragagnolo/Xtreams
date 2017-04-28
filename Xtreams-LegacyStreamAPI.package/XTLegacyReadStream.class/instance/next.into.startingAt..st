legacy API
next: n into: aCollection startingAt: startIndex
	| count |
	count := self readInto: aCollection startingAt: startIndex count: n.
	^count = n
		ifTrue:[ aCollection ]
		ifFalse:[ aCollection copyFrom: 1 to: startIndex + count - 1 ]