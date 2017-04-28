accessing
write: anInteger from: aSequenceableCollection at: startIndex
	| count |
	count := 0.
	[[count < anInteger] whileTrue:
		[destination value: (aSequenceableCollection at: startIndex + count).
		count := count + 1]]
			on: Incomplete do: [:ex | (Incomplete on: aSequenceableCollection count: count at: startIndex) raise].
	^anInteger