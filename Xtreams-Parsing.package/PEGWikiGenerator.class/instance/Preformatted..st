Structural
Preformatted: text

	<action: 'Preformatted' arguments: #(2)>
	<action: 'Code' arguments: #(2)>

	^self
		newElementTag: Preformatted
		elements: (Array with: (self newText: text))