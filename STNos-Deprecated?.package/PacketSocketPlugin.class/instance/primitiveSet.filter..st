primitive
primitiveSet: descriptor filter: aString
	| stringSize |
	self primitive: 'PacketSocketSetFilter' parameters: #(SmallInteger String).
	stringSize := interpreterProxy slotSizeOf: (aString asOop: String).
	self cCode: 'sqPacketSocketSetFilter(descriptor, aString, stringSize)'