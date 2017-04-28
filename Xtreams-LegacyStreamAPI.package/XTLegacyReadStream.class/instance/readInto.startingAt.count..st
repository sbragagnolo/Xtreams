legacy API
readInto: aCollection startingAt: startIndex count: n
	^
		[source read: n into: aCollection at: startIndex.
		n]
			on: Incomplete do: [:exc | exc count]