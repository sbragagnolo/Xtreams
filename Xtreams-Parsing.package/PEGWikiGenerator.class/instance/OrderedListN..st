Structural
OrderedListN: bullets

	<action: 'OrderedList2'>
	<action: 'OrderedList3'>

	^self
		newElementTag: ListItem
		elements: (Array with: (self newElementTag: OrderedList elements: bullets))