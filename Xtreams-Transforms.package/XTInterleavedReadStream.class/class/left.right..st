instance creation
left: leftXTReadStream right: rightXTReadStream
	^ self basicNew initializeWithStreams: {leftXTReadStream. rightXTReadStream}.