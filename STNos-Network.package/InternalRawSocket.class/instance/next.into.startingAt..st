accessing
next: anInteger into: aByteArray startingAt: startIndex
	"Read the next anInteger bytes into aByteArray, starting at startIndex. Answer the number of bytes actually read."

	self dataAvailable ifFalse: [^ 0].
	inputStream atEnd ifTrue: [inputStream := self next rawDataStream].
	^ (inputStream next: anInteger into: aByteArray startingAt: startIndex) size