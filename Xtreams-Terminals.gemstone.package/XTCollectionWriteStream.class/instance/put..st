accessing
put: anObject
	position := position + 1.
	destination at: position put: anObject.
	length := length + 1.
	^anObject