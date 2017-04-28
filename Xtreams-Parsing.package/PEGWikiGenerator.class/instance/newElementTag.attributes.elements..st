Lexical
newElementTag: aString attributes: attributes elements: elements

	| result |
	result := XMLElement name: aString attributes: attributes.
	^ result
		addNodes: elements;
		yourself