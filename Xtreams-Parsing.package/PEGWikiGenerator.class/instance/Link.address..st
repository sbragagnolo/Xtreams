Lexical
Link: flow address: address

	<action: 'LinkFull' arguments: #(2 3)>
	^self
		newElementTag: Anchor
		attributes: (Array with: Href -> address)
		elements: flow