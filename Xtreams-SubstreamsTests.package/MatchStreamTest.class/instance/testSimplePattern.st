tests
testSimplePattern

	| stream result |
	stream := '112123456' reading.
	result := (stream ending: '123') rest.
	self assert: result = '112'