legacy API
upTo: anObject
	^(source ending: [:element | element = anObject] inclusive: false) rest