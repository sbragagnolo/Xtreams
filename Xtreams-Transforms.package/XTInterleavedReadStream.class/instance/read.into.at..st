accessing
read: anInteger into: aSequenceableCollection at: startIndex 
	"While we haven't read enough, read another element from the
	current working set, in a round robin fashion. If a stream throws an
	Incomplete, remove that stream from the working set, and continue."
	| count |
	count := 0.
	[[[count < anInteger] whileTrue: [
		aSequenceableCollection at: startIndex + count put: (workingSet at: streamIndex) get.
		streamIndex := streamIndex \\ workingSet size + 1.
		count := count + 1].
	^ anInteger]
	on: Incomplete
	do: [workingSet := workingSet
		copyWithout: (workingSet at: streamIndex).
		workingSet
			ifEmpty: [(Incomplete
				on: aSequenceableCollection
				count: count
				at: startIndex) raise].
		streamIndex > workingSet size
			ifTrue: [streamIndex := 1]]] repeat.