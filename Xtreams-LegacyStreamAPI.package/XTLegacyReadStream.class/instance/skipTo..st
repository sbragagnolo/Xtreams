legacy API
skipTo: anObject
	source do: [:element | element = anObject ifTrue: [^true]].
	^false