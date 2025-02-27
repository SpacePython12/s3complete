// ===========================================================================
// FM Universial Voice Bank
// ===========================================================================

// Synth Bass 2 (Voice 0x00)
	.byte 0x3C
	.byte 0x01, 0x00, 0x00, 0x00, 	0x1F, 0x1F, 0x15, 0x1F, 	0x11, 0x0D, 0x12, 0x05
	.byte 0x07, 0x04, 0x09, 0x02, 	0x55, 0x3A, 0x25, 0x1A, 	0x1A, 0x80, 0x07, 0x80

// Trumpet 1 (Voice 0x01)
	.byte 0x3D
	.byte 0x01, 0x01, 0x01, 0x01, 	0x94, 0x19, 0x19, 0x19, 	0x0F, 0x0D, 0x0D, 0x0D
	.byte 0x07, 0x04, 0x04, 0x04, 	0x25, 0x1A, 0x1A, 0x1A, 	0x15, 0x80, 0x80, 0x80

// Slap Bass 2 (Voice 0x02)
	.byte 0x03
	.byte 0x00, 0xD7, 0x33, 0x02, 	0x5F, 0x9F, 0x5F, 0x1F, 	0x13, 0x0F, 0x0A, 0x0A
	.byte 0x10, 0x0F, 0x02, 0x09, 	0x35, 0x15, 0x25, 0x1A, 	0x13, 0x16, 0x15, 0x80

// Synth Bass 1 (Voice 0x03)
	.byte 0x34
	.byte 0x70, 0x72, 0x31, 0x31, 	0x1F, 0x1F, 0x1F, 0x1F, 	0x10, 0x06, 0x06, 0x06
	.byte 0x01, 0x06, 0x06, 0x06, 	0x35, 0x1A, 0x15, 0x1A, 	0x10, 0x83, 0x18, 0x83

// Bell Synth 1 (Voice 0x04)
	.byte 0x3E
	.byte 0x77, 0x71, 0x32, 0x31, 	0x1F, 0x1F, 0x1F, 0x1F, 	0x0D, 0x06, 0x00, 0x00
	.byte 0x08, 0x06, 0x00, 0x00, 	0x15, 0x0A, 0x0A, 0x0A, 	0x1B, 0x80, 0x80, 0x80

// Bell Synth 2 (Voice 0x05)
	.byte 0x34
	.byte 0x33, 0x41, 0x7E, 0x74, 	0x5B, 0x9F, 0x5F, 0x1F, 	0x04, 0x07, 0x07, 0x08
	.byte 0x00, 0x00, 0x00, 0x00, 	0xFF, 0xFF, 0xEF, 0xFF, 	0x23, 0x80, 0x29, 0x87

// Synth Brass 1 (Voice 0x06)
	.byte 0x3A
	.byte 0x01, 0x07, 0x31, 0x71, 	0x8E, 0x8E, 0x8D, 0x53, 	0x0E, 0x0E, 0x0E, 0x03
	.byte 0x00, 0x00, 0x00, 0x07, 	0x1F, 0xFF, 0x1F, 0x0F, 	0x18, 0x28, 0x27, 0x80

// Synth like Bassoon (Voice 0x07)
	.byte 0x3C
	.byte 0x32, 0x32, 0x71, 0x42, 	0x1F, 0x18, 0x1F, 0x1E, 	0x07, 0x1F, 0x07, 0x1F
	.byte 0x00, 0x00, 0x00, 0x00, 	0x1F, 0x0F, 0x1F, 0x0F, 	0x1E, 0x80, 0x0C, 0x80

// Bell Horn type thing (Voice 0x08)
	.byte 0x3C
	.byte 0x71, 0x72, 0x3F, 0x34, 	0x8D, 0x52, 0x9F, 0x1F, 	0x09, 0x00, 0x00, 0x0D
	.byte 0x00, 0x00, 0x00, 0x00, 	0x23, 0x08, 0x02, 0xF7, 	0x15, 0x80, 0x1D, 0x87

// Synth Bass 3 (Voice 0x09)
	.byte 0x3D
	.byte 0x01, 0x01, 0x00, 0x00, 	0x8E, 0x52, 0x14, 0x4C, 	0x08, 0x08, 0x0E, 0x03
	.byte 0x00, 0x00, 0x00, 0x00, 	0x1F, 0x1F, 0x1F, 0x1F, 	0x1B, 0x80, 0x80, 0x9B

// Synth Trumpet (Voice 0x0A)
	.byte 0x3A
	.byte 0x01, 0x01, 0x01, 0x02, 	0x8D, 0x07, 0x07, 0x52, 	0x09, 0x00, 0x00, 0x03
	.byte 0x01, 0x02, 0x02, 0x00, 	0x52, 0x02, 0x02, 0x28, 	0x18, 0x22, 0x18, 0x80

// Wood Block (Voice 0x0B)
	.byte 0x3C
	.byte 0x36, 0x31, 0x76, 0x71, 	0x94, 0x9F, 0x96, 0x9F, 	0x12, 0x00, 0x14, 0x0F
	.byte 0x04, 0x0A, 0x04, 0x0D, 	0x2F, 0x0F, 0x4F, 0x2F, 	0x33, 0x80, 0x1A, 0x80

// Tubular Bell (Voice 0x0C)
	.byte 0x34
	.byte 0x33, 0x41, 0x7E, 0x74, 	0x5B, 0x9F, 0x5F, 0x1F, 	0x04, 0x07, 0x07, 0x08
	.byte 0x00, 0x00, 0x00, 0x00, 	0xFF, 0xFF, 0xEF, 0xFF, 	0x23, 0x90, 0x29, 0x97

// Strike Bass (Voice 0x0D)
	.byte 0x38
	.byte 0x63, 0x31, 0x31, 0x31, 	0x10, 0x13, 0x1A, 0x1B, 	0x0E, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 	0x3F, 0x0F, 0x0F, 0x0F, 	0x1A, 0x19, 0x1A, 0x80

// Elec Piano (Voice 0x0E)
	.byte 0x3A
	.byte 0x31, 0x25, 0x73, 0x41, 	0x5F, 0x1F, 0x1F, 0x9C, 	0x08, 0x05, 0x04, 0x05
	.byte 0x03, 0x04, 0x02, 0x02, 	0x2F, 0x2F, 0x1F, 0x2F, 	0x29, 0x27, 0x1F, 0x80

// Bright Piano (Voice 0x0F)
	.byte 0x04
	.byte 0x71, 0x41, 0x31, 0x31, 	0x12, 0x12, 0x12, 0x12, 	0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 	0x0F, 0x0F, 0x0F, 0x0F, 	0x23, 0x80, 0x23, 0x80

// 0xCurch Bell (Voice 0x10)
	.byte 0x14
	.byte 0x75, 0x72, 0x35, 0x32, 	0x9F, 0x9F, 0x9F, 0x9F, 	0x05, 0x05, 0x00, 0x0A
	.byte 0x05, 0x05, 0x07, 0x05, 	0x2F, 0xFF, 0x0F, 0x2F, 	0x1E, 0x80, 0x14, 0x80

// Synth Brass 2 (Voice 0x11)
	.byte 0x3D
	.byte 0x01, 0x00, 0x01, 0x02, 	0x12, 0x1F, 0x1F, 0x14, 	0x07, 0x02, 0x02, 0x0A
	.byte 0x05, 0x05, 0x05, 0x05, 	0x2F, 0x2F, 0x2F, 0xAF, 	0x1C, 0x80, 0x82, 0x80

// Bell Piano (Voice 0x12)
	.byte 0x1C
	.byte 0x73, 0x72, 0x33, 0x32, 	0x94, 0x99, 0x94, 0x99, 	0x08, 0x0A, 0x08, 0x0A
	.byte 0x00, 0x05, 0x00, 0x05, 	0x3F, 0x4F, 0x3F, 0x4F, 	0x1E, 0x80, 0x19, 0x80

// Wet Wood Bass (Voice 0x13)
	.byte 0x31
	.byte 0x33, 0x01, 0x00, 0x00, 	0x9F, 0x1F, 0x1F, 0x1F, 	0x0D, 0x0A, 0x0A, 0x0A
	.byte 0x0A, 0x07, 0x07, 0x07, 	0xFF, 0xAF, 0xAF, 0xAF, 	0x1E, 0x1E, 0x1E, 0x80

// Silent Bass (Voice 0x14)
	.byte 0x3A
	.byte 0x70, 0x76, 0x30, 0x71, 	0x1F, 0x95, 0x1F, 0x1F, 	0x0E, 0x0F, 0x05, 0x0C
	.byte 0x07, 0x06, 0x06, 0x07, 	0x2F, 0x4F, 0x1F, 0x5F, 	0x21, 0x12, 0x28, 0x80

// Picked Bass (Voice 0x15)
	.byte 0x28
	.byte 0x71, 0x00, 0x30, 0x01, 	0x1F, 0x1F, 0x1D, 0x1F, 	0x13, 0x13, 0x06, 0x05
	.byte 0x03, 0x03, 0x02, 0x05, 	0x4F, 0x4F, 0x2F, 0x3F, 	0x0E, 0x14, 0x1E, 0x80

// Xylophone (Voice 0x16)
	.byte 0x3E
	.byte 0x38, 0x01, 0x7A, 0x34, 	0x59, 0xD9, 0x5F, 0x9C, 	0x0F, 0x04, 0x0F, 0x0A
	.byte 0x02, 0x02, 0x05, 0x05, 	0xAF, 0xAF, 0x66, 0x66, 	0x28, 0x80, 0xA3, 0x80

// Sine Flute (Voice 0x17)
	.byte 0x39
	.byte 0x32, 0x31, 0x72, 0x71, 	0x1F, 0x1F, 0x1F, 0x1F, 	0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 	0x0F, 0x0F, 0x0F, 0x0F, 	0x1B, 0x32, 0x28, 0x80

// Pipe Organ (Voice 0x18)
	.byte 0x07
	.byte 0x34, 0x74, 0x32, 0x71, 	0x1F, 0x1F, 0x1F, 0x1F, 	0x0A, 0x0A, 0x05, 0x03
	.byte 0x00, 0x00, 0x00, 0x00, 	0x3F, 0x3F, 0x2F, 0x2F, 	0x8A, 0x8A, 0x80, 0x80

// Synth Brass 2 (Voice 0x19)
	.byte 0x3A
	.byte 0x31, 0x37, 0x31, 0x31, 	0x8D, 0x8D, 0x8E, 0x53, 	0x0E, 0x0E, 0x0E, 0x03
	.byte 0x00, 0x00, 0x00, 0x00, 	0x1F, 0xFF, 0x1F, 0x0F, 	0x17, 0x28, 0x26, 0x80

// Harpischord (Voice 0x1A)
	.byte 0x3B
	.byte 0x3A, 0x31, 0x71, 0x74, 	0xDF, 0x1F, 0x1F, 0xDF, 	0x00, 0x0A, 0x0A, 0x05
	.byte 0x00, 0x05, 0x05, 0x03, 	0x0F, 0x5F, 0x1F, 0x5F, 	0x32, 0x1E, 0x0F, 0x80

// Metallic Bass (Voice 0x1B)
	.byte 0x05
	.byte 0x04, 0x01, 0x02, 0x04, 	0x8D, 0x1F, 0x15, 0x52, 	0x06, 0x00, 0x00, 0x04
	.byte 0x02, 0x08, 0x00, 0x00, 	0x1F, 0x0F, 0x0F, 0x2F, 	0x16, 0x90, 0x84, 0x8C

// Alternate Metallic Bass (Voice 0x1C)
	.byte 0x2C
	.byte 0x71, 0x74, 0x32, 0x32, 	0x1F, 0x12, 0x1F, 0x12, 	0x00, 0x0A, 0x00, 0x0A
	.byte 0x00, 0x00, 0x00, 0x00, 	0x0F, 0x1F, 0x0F, 0x1F, 	0x16, 0x80, 0x17, 0x80

// Backdropped Metallic Bass (Voice 0x1D)
	.byte 0x3A
	.byte 0x01, 0x07, 0x01, 0x01, 	0x8E, 0x8E, 0x8D, 0x53, 	0x0E, 0x0E, 0x0E, 0x03
	.byte 0x00, 0x00, 0x00, 0x07, 	0x1F, 0xFF, 0x1F, 0x0F, 	0x18, 0x28, 0x27, 0x8F

// Sine like Bell (Voice 0x1E)
	.byte 0x36
	.byte 0x7A, 0x32, 0x51, 0x11, 	0x1F, 0x1F, 0x59, 0x1C, 	0x0A, 0x0D, 0x06, 0x0A
	.byte 0x07, 0x00, 0x02, 0x02, 	0xAF, 0x5F, 0x5F, 0x5F, 	0x1E, 0x8B, 0x81, 0x80

// Synth like Metallic with Small Bell (Voice 0x1F)
	.byte 0x3C
	.byte 0x71, 0x72, 0x3F, 0x34, 	0x8D, 0x52, 0x9F, 0x1F, 	0x09, 0x00, 0x00, 0x0D
	.byte 0x00, 0x00, 0x00, 0x00, 	0x23, 0x08, 0x02, 0xF7, 	0x15, 0x85, 0x1D, 0x8A

// Nice Synth like lead (Voice 0x20)
	.byte 0x3E
	.byte 0x77, 0x71, 0x32, 0x31, 	0x1F, 0x1F, 0x1F, 0x1F, 	0x0D, 0x06, 0x00, 0x00
	.byte 0x08, 0x06, 0x00, 0x00, 	0x15, 0x0A, 0x0A, 0x0A, 	0x1B, 0x8F, 0x8F, 0x8F

// Rock Organ (Voice 0x21)
	.byte 0x07
	.byte 0x34, 0x74, 0x32, 0x71, 	0x1F, 0x1F, 0x1F, 0x1F, 	0x0A, 0x0A, 0x05, 0x03
	.byte 0x00, 0x00, 0x00, 0x00, 	0x3F, 0x3F, 0x2F, 0x2F, 	0x8A, 0x8A, 0x8A, 0x8A

// Strike like Slap Bass (Voice 0x22)
	.byte 0x20
	.byte 0x36, 0x35, 0x30, 0x31, 	0xDF, 0xDF, 0x9F, 0x9F, 	0x07, 0x06, 0x09, 0x06
	.byte 0x07, 0x06, 0x06, 0x08, 	0x20, 0x10, 0x10, 0xF8, 	0x19, 0x37, 0x13, 0x80

