legacy API
nextLine
	self atEnd ifTrue: [^nil].
	^self upToAnyOf: CharacterSet crlf do: [:char | char = Character cr ifTrue: [self peekFor: Character lf]]