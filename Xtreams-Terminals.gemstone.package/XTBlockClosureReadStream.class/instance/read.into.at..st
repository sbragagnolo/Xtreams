accessing
read: anInteger into: aSequenceableCollection at: startIndex
	| count |
	count := 0.
	[[count < anInteger] whileTrue:
		[aSequenceableCollection at: startIndex + count put: source value.
		count := count + 1]]
			on: Incomplete do: [:ex | (Incomplete on: aSequenceableCollection count: count at: startIndex) raise].
	^anInteger