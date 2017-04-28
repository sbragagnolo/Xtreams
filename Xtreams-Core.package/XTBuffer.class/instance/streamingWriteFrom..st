private
streamingWriteFrom: aReadStream

	| count |
	count := 0.
	^[ 	[ count := count + (self streamingWrite: DefaultBufferSize from: aReadStream) ] repeat
	] on: Incomplete do: [ :ex | ex count + count ]