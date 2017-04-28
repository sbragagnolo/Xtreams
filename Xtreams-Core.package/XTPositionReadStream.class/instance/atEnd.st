seeking
atEnd
	" Are there any more elements after current position. The stream must be positionable."
	"	^		<Boolean>"
	"
		([1] reading limiting: 5) positioning -= 0; atEnd
	"
	^[ self peek. false ] on: Incomplete do: [ :ex | true ]