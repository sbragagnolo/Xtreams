Structural
ListItem: bullets flow: flow

	<action: 'Bullet1' arguments: #(2 3)>
	<action: 'Bullet2' arguments: #(2 3)>
	<action: 'Bullet3' arguments: #(2 3)>
	<action: 'Hash1' arguments: #(2 3)>
	<action: 'Hash2' arguments: #(2 3)>
	<action: 'Hash3' arguments: #(2 3)>

	^self newElementTag: ListItem elements: flow