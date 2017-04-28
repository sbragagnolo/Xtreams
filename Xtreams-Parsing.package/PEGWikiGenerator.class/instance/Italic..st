Lexical
Italic: flow

	<action: 'Italic' arguments: #(2)>
	^self
		newElementTag: Span
		attributes:
			(Array with: Style -> 'font-style: italic')
		elements: flow