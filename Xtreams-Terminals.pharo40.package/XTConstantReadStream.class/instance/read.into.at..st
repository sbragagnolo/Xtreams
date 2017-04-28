accessing
read: anInteger into: aSequenceableCollection at: startIndex

	| chunk start |
	chunk := 16.
	startIndex to: startIndex + (anInteger min: chunk) - 1 do: [ :i | aSequenceableCollection at: i put: source ].
	anInteger > chunk ifFalse: [ ^anInteger ].
	start := startIndex + chunk.
	[ chunk < anInteger ] whileTrue: [
		aSequenceableCollection replaceFrom: start to: ((start := start + chunk) - 1 min: anInteger) with: aSequenceableCollection startingAt: startIndex.
		chunk := chunk bitShift: 1 ].
	^anInteger