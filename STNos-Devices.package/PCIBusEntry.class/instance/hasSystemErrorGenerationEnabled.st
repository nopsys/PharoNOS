accessing - command register
hasSystemErrorGenerationEnabled
	"bit 8 - This bit is used to control whether or not a device does address/data
	stepping. Devices that never do stepping must hardwire this bit to 0.
	Devices that always do stepping must hardwire this bit to 1. Devices
	that can do either, must make this bit read/write and have it initialize to
	1 after RST#. SERR is signaled by hardware for Unrecoverable errors."

	^ self testCommandBit: 8