private
streamingWriteFrom: aReadStream
	| count chunkSize |
	count := 0.
	chunkSize := DefaultBufferSize.
	^[[aReadStream read: chunkSize into: destination at: position + 1.
	position := position + chunkSize.
	count := count + chunkSize] repeat]
		on: Incomplete do: [:exception |
			position := position + exception count.
			position > length ifTrue: [length := position].
			count + exception count]