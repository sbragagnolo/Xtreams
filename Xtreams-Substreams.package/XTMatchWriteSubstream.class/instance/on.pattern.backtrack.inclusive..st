initialize-release
on: aDestination pattern: aPattern backtrack: aBacktrack inclusive: aBoolean
	self on: aDestination.
	pattern := aPattern.
	backtrack := aBacktrack.
	candidate := 1.
	inclusive := aBoolean.
	substreamAtEnd := false