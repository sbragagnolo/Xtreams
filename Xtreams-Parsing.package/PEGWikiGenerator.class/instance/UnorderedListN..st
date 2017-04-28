Structural
UnorderedListN: bullets

	<action: 'UnorderedList2'>
	<action: 'UnorderedList3'>

	^self
		newElementTag: ListItem
		elements: (Array with: (self newElementTag: UnorderedList elements: bullets))