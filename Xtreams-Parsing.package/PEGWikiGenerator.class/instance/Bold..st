Lexical
Bold: flow

	<action: 'Bold' arguments: #(2)>
	^self 
		newElementTag: Span
		attributes:
			(Array with: (Style -> 'font-weight: bold'))
		elements: flow