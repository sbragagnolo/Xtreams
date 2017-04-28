accessing
get
	outputBuffer hasDataToRead ifTrue: [^outputBuffer get].
	substreamAtEnd ifTrue: [Incomplete zero raise].

	self gobble.
	outputBuffer hasDataToRead ifFalse: [Incomplete zero raise].
	^outputBuffer get