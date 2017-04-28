initialize-release
on: aSource pattern: aPattern backtrack: aBacktrack inclusive: aBoolean
	self on: aSource.
	pattern := aPattern.
	inputBuffer := XTRingBuffer new: 1 class: self contentsSpecies.
	outputBuffer := XTRingBuffer new: pattern size class: self contentsSpecies.
	candidate := 1.
	backtrack := aBacktrack.
	inclusive := aBoolean.
	substreamAtEnd := false