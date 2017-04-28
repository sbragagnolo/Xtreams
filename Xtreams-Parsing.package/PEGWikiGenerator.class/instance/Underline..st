Lexical
Underline: flow

	<action: 'Underline' arguments: #(2)>
	^self
		newElementTag: Span
		attributes:
			(Array with: Style -> 'text-decoration: underline')
		elements: flow