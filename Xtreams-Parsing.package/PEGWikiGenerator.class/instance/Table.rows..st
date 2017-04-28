Structural
Table: header rows: rows

	<action: 'Table' arguments: #(1 2)>
	^self
		newElementTag: Table
		elements:
			(Array
				with:
					(self
						newElementTag: TableHead
						elements: (Array with: header))
				with: (self newElementTag: TableBody elements: rows))