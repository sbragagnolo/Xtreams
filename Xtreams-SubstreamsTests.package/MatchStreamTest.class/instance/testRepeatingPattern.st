tests
testRepeatingPattern

	| stream result |
	stream := '123-45--6789' reading.
	result := (stream ending: '--') rest.
	self assert: result = '123-45'