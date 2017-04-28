Lexical
Link: address

	<action: 'LinkShort' arguments: #(2)>
	^self
		newElementTag: Anchor
		attributes:
			(Array with: Href -> (address , '.html'))
		elements: (Array with: (self newText: address))