legacy API
positionOfSubCollection: subCollection ifAbsent: exceptionBlock
	^self explore:
		[(self match: subCollection)
			ifTrue: [self position - subCollection size + 1]
			ifFalse: [exceptionBlock value]]