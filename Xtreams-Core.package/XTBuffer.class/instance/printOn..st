printing
printOn: aStream
	| stream |
	stream := String new writing.
	self streamingPrintOn: stream.
	aStream nextPutAll: stream conclusion