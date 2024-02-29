# Introduction

Have you recently written music for the Sega Genesis in your favorite tracker, and now you want to see it playing on real hardware (or in an emulator), only to find that you can't seem to figure out how to get it to work?

If you said yes, then you've come to the right place. In this guide, you will learn how to write SMPS assembly code, and transpose your music into your favorite Japanese-developed games like a true 90's sound programmer!

While it might seem daunting to learn assembly, which is one of the most difficult programming languages there is if you have no experience with coding, don't worry; you won't need to learn any complicated logic!

# What you'll need

* **A PC/laptop or a Mac/Macbook.** While you may be able to use a mobile device to write code, I would highly recommend against it since it's going to be difficult to compile your code into a ROM later.
* **An IDE / text editor.** While I use VSCodium (a FOSS version of Microsoft's VSCode), there's a wide selection of programs you can use to edit assembly code. Examples include Notepad++, Visual Studio Code, Sublime, and IntelliJ IDEA (or other JetBrains IDEs). If you have one of these installed on your computer already, just use that one. (not regular Notepad though!)
* **A disassembly of your game of choice.** In this guide, I'll use the [Sonic 3 and Knuckles disassembly](https://github.com/sonicretro/skdisasm) as reference, and most of the guide will work for the rest of the Genesis Sonic games. Other games may work if they use SMPS as a sound driver (which are typically developed in Japan), but I won't be much help if something is different with your game's sound driver. **DISCLAMER**: GEMS is different from SMPS, therefore SMPS songs will not work with GEMS sound drivers, and vice versa.
* **_smps2asm_inc.asm** You will need this file to compile your song. It may already be in your disassembly, in which case this step is not required.
* **An assembler** Again, your dissasembly may already include an assembler. Make sure that _smps2asm_inc.asm is compatible (it will be if it came with the disassembly).

# How assembly works

In assembly, individual bytes are *assembled* sequentially. This is useful for processor instructions, but we'll use it to build code that the sound driver can understand.

The S3K disassembly uses The Macroassembler AS, which is what we will be referring to in this guide.

There are several essential parts of assembly code:
* **Labels.** These are essentially human-readable names for locations in your program. It is usually first defined by writing the name on a new line followed by a colon (like `name:`. Now, this location is defined as a *symbol*, which is basically a name that has a corresponding value, which is substituted in when the file is assembled. The label's value is usually the number of bytes that were assembled previously.
* **Comments.** These are human-readable pieces of documentation that let other humans know what a piece of code does. Comments are defined by a semicolon, followed by any text. (like `; Everything after that semicolon on this line is now a comment!`) 
* **Instructions and directives.** These are what actually creates code to assemble. In SMPS, the only instrucions used are special instructions called macros, which are custom instructions that are defined in _smps2asm_inc.asm. Directives are assembler defined commands which do useful things such as defining constants, reserving space, etc.

The following is an example of some assembly code:
```asm
FibonacciNums: 
    dc.b 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233 ; These are the first 14 Fibonacci numbers! These will be used elsewhere in the program.

WheresMyFibNums: dc.w FibonacciNums
```
In this example, the code defined a label named `FibonacciNums` (with the value 0 because it was at the beginning of the file), used the `dc.b` directive, and passed the first 14 Fibonacci numbers as arguments. This directive stored its arguments as 14 bytes. A comment described what the numbers meant. Another label was defined named `WheresMyFibNums` which used the `dc.w` directive, defining a word (16-bit number, 2 bytes) that stored the value of the label `FibonacciNums` (which was 0). `WheresMyFibNums` has a value of 14, since 14 bytes were assembled before it.

It's important to note that numbers in a computer start from 0, not 1. It may be unintuitive, but it makes a whole lot of operations a whole lot simpler.

The only directive you will need to know for SMPS is `dc.b`, which simply assembles all the numbers and symbols after it into bytes.

Example for `dc.b`:
```asm
dc.b 45, $FF, %10101011, MyConstantByte, "Hello World"
```

`dc.b` can take several types of arguments, which in this example are decimal, hexadecimal (prefixed by `$`), binary (prefixed by `%`), symbol, and text (in quotation marks, AKA a string, which is encoded in ASCII) 



# SMPS Header

All SMPS music files start with a header. Here's an example of Angel Island Zone Act 1's header:
```asm
Snd_AIZ1_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoiceUVB
	smpsHeaderChan      6, 3
	smpsHeaderTempo     1, 31

	smpsHeaderDAC       Snd_AIZ1_DAC
	smpsHeaderFM        Snd_AIZ1_FM1,	24, 15
	smpsHeaderFM        Snd_AIZ1_FM2,	12, 22
	smpsHeaderFM        Snd_AIZ1_FM3,	12, 22
	smpsHeaderFM        Snd_AIZ1_FM4,	12, 22
	smpsHeaderFM        Snd_AIZ1_FM5,	12, 22
	smpsHeaderPSG       Snd_AIZ1_PSG1,	244, 4, 0, sTone_0C
	smpsHeaderPSG       Snd_AIZ1_PSG2,	244, 4, 0, sTone_0C
	smpsHeaderPSG       Snd_AIZ1_PSG3,	0, 4, 0, sTone_0C
```

1. `smpsHeaderStartSong <ver>` initializes the song, where `ver` is which driver version to target.
2. `smpsHeaderVoiceUVB` set's the song's FM instrument set to the Universal Voice Bank (S3,SK,S3D only). This can be replaced with `smpsHeaderVoice <loc>`, where `loc` is the location of a custom FM instrument set.
3. `smpsHeaderChan <fm>, <psg>` defines which channels will be used, where `fm` is the number of FM channels to use, and `psg` is the number of PSG channels to use.
4. `smpsHeaderTempo <div>, <mod>` defines the tempo of the song. `div` defines the note duration modifier, `mod` defines the actual tempo modifier.
5. `smpsHeaderDAC <loc>` sets up the DAC channel with track location `loc`.
6. `smpsHeaderFM <loc>, <pitch>, <vol>` sets up an FM channel with track location `loc`, pitch offset `pitch`, and initial volume `vol`. This is repeated for every used FM channel.
7. `smpsHeaderPSG <loc>, <pitch>, <vol>, 0, <voice>` sets up a PSG channel with track location `loc`, pitch offset `pitch`, initial volume `vol`, and envelope `voice`. This is repeated for every used PSG channel.

# SMPS Tracks

Each FM and PSG channel has a corresponding track, which is defined by a label, followed by a series of `dc.b` directives and SMPS commands.

Notation in SMPS is defined as a series of notes and durations.

Here is one example that plays Mary Had a Little Lamb on a single channel (one quarter note is 4 ticks in this example):
```asm
Track_FM1:
    dc.b nE4, 4, nD4, 4, nC4, 4, nD4, 4 ; Ma-ry had a
    dc.b nE4, 4, nE4, 4, nE4, 8 ; lit-tle lamb
    dc.b nD4, 4, nD4, 4, nD4, 8 ; lit-tle lamb
    dc.b nE4, 4, nG4, 4, nG4, 8 ; lit-tle lamb!
    dc.b nE4, 4, nD4, 4, nC4, 4, nD4, 4 ; Ma-ry had a
    dc.b nE4, 4, nE4, 4, nE4, 4, nE4, 4 ; lit-tle lamb whose
    dc.b nD4, 4, nD4, 4, nE4, 4, nD4, 4 ; fleece was white as
    dc.b nC4, 16 ; snow!
```

SMPS actually has two neat space-saving tricks which allow you to repeat notes easily. 

First, you can define a duration for a note, and play some notes after, which will have the same duration.

For example, 
```asm
    dc.b nE4, 4, nD4, 4, nC4, 4, nD4, 4 ; Ma-ry had a
```
is equivalent to
```asm
    dc.b nE4, 4, nD4, nC4, nD4 ; Ma-ry had a
```
since all the notes on that line share the same duration.

Secondly, you can repeat a note by defining multiple durations for a note.

For example, 
```asm
    dc.b nE4, 4, nE4, 4, nE4, 8 ; lit-tle lamb
```
is equivalent to
```asm
    dc.b nE4, 4, 4, 8 ; lit-tle lamb
```
since all the notes on that line are the same, but just have different durations.

If we apply all these optimizations on our Mary Had a Little Lamb example, we get this:
```asm
Track_FM1:
    dc.b nE4, 4, nD4, nC4, nD4 ; Ma-ry had a
    dc.b nE4, 4, 4, 8 ; lit-tle lamb
    dc.b nD4, 4, 4, 8 ; lit-tle lamb
    dc.b nE4, 4, nG4, 4, 8 ; lit-tle lamb!
    dc.b nE4, 4, nD4, nC4, nD4 ; Ma-ry had a
    dc.b nE4, 4, 4, 4, 4 ; lit-tle lamb whose
    dc.b nD4, 4, nD4, nE4, nD4 ; fleece was white as
    dc.b nC4, 16 ; snow!
```

Our optimization saved 17 bytes! That corresponds to around 2/3 the original size, which can be really helpful when trying to stay within suprisingly strict bank boundaries.

SMPS commands are used to change instruments, configure modulation, and more. 

Here, the first half of Mary Had a Little Lamb uses instrument 0, and the second half uses instrument 1:
```asm
Track_FM1:
    smpsSetvoice 0 ; Change instrument to 0

    dc.b nE4, 4, nD4, nC4, nD4 ; Ma-ry had a
    dc.b nE4, 4, 4, 8 ; lit-tle lamb
    dc.b nD4, 4, 4, 8 ; lit-tle lamb
    dc.b nE4, 4, nG4, 4, 8 ; lit-tle lamb!

    smpsSetVoice 1 ; Mid-song instrument swap!

    dc.b nE4, 4, nD4, nC4, nD4 ; Ma-ry had a
    dc.b nE4, 4, 4, 4, 4 ; lit-tle lamb whose
    dc.b nD4, 4, nD4, nE4, nD4 ; fleece was white as
    dc.b nC4, 16 ; snow!
```

PSG is mostly the same as FM, except for hardcoded voices. 

DAC is pretty similar to FM, except notes instead map to samples. Check `_smps2asm_inc.asm` for a full list of samples. 

# SMPS Commands

**This is an incomplete list, be sure to read `_smps2asm_inc.asm` for all commands.**

Command|Description
-|-
`smpsPan <direction>, <amsfms>`|Sets the [panning](#smps-panning) and AMS/FMS values for this channel.
`smpsDetune <detune>`|Sets the detune of this channel.
`smpsReturn`|Returns from a subroutine. See [Jumps, subroutines, and loops](#quick-detour-jumps-subroutines-and-loops)
`smpsFade`|Fades in the previous song.
`smpsChanTempoDiv <div>`|Independently sets the tempo division for this channel.
`smpsAlterVol <vol>`|Alters this channel's volume.
`smpsNoAttack`|Place this before a note to prevent it from attacking, aka "slur".
`smpsNoteFill <fill>`|Sets the note fill of this channel.
`smpsChangeTransposition <trans>`|Sets the transpostion for this channel.
`smpsSetTempoMod <mod>`|Sets the global tempo modifier.
`smpsSetTempoDiv <div>`|Sets the tempo divider for all channels.
`smpsSetVol <vol>`|Sets this channel's volume.
`smpsSetvoice <voice>`|Sets this channel's instrument.
`smpsModSet <wait>, <speed>, <change>, <step>`|Sets the modulation of this channel.
`smpsModOn`|Enables modulation on this channel.
`smpsModOff`|Disables modulation on this channel.
`smpsStop`|Stops the song.
`smpsJump <loc>`|Jumps to a locatiob. See [Jumps, subroutines, and loops](#quick-detour-jumps-subroutines-and-loops)
`smpsCall <loc>`|Calls a subroutine. See [Jumps, subroutines, and loops](#quick-detour-jumps-subroutines-and-loops)
`smpsLoop <index>, <loops>, <loc>`|Loops a certain number of times. See [Jumps, subroutines, and loops](#quick-detour-jumps-subroutines-and-loops)



## SMPS Panning
Name|Value
-|-
`panNone`|`$00`
`panRight`|`$40`
`panLeft`|`$80`
`panCenter` / `panCentre`|`$C0`

## Quick detour: Jumps, subroutines, and loops

The `smpsJump`, `smpsCall`, `smpsReturn`, and `smpsLoop` commands are a stripped-down form of flow control. 

`smpsJump` will "go to" the given location, and will never return. 

`smpsCall` will "call" a "function" by jumping to the given location, but unlike `smpsJump`, it will resume execution after that command. 

`smpsReturn` is used to "return" from a subroutine. 

`smpsLoop` will loop a given number of times at a given recursion depth, jumping back to the given location.

Here's an example of this flow control:
```asm
MainTrack:

    ; Do stuff

    smpsCall SomeSubroutine ; Here's our call, jump to SomeSubroutine, which will execute, then return to here

    ; Do more stuff

    smpsJump MainTrack ; Once the track reaches this point, it will restart (jump back to MainTrack), essentially looping forever.

    ; Any code placed here is unreachable due to that jump above.

SomeSubroutine:

    ; Do stuff, but in subroutine

    smpsCall SomeOtherSubroutine ; Nested loop

    smpsLoop 0, 3, SomeSubroutine ; Jump to SomeSubroutine with recursion index 0 (root index) 3 times.

    smpsReturn ; Now, we will return to right after where this subroutine was called.

    ; Again, any code placed here is unreachable, since we already returned.

SomeOtherSubroutine:

    ; Do stuff

    smpsLoop 1, 5, SomeOtherSubroutine ; Loop 5 times. Notice how the recursion index is 1, since this loop is called from another loop.

    smpsReturn
```

# SMPS Custom Instruments

SMPS allows a song to define a set of custom instruments, defined by a label and one definition per instrument. Here is an example of an instrument entry in Marble Garden Zone Act 1:
```asm
Snd_MGZ1_Voices:
;	Voice $00
;	$38
;	$41, $31, $73, $41, 	$1A, $15, $18, $18, 	$02, $0C, $05, $01
;	$00, $0F, $00, $00, 	$1F, $3F, $5F, $1F, 	$2D, $10, $23, $81
    smpsVcAlgorithm     3
	smpsVcFeedback      7
	smpsVcUnusedBits    0
	smpsVcDetune        0, 0, 0, 0
	smpsVcCoarseFreq    2, 4, 2, 1
	smpsVcRateScale     0, 0, 0, 0
	smpsVcAttackRate    22, 25, 27, 24
	smpsVcAmpMod        0, 0, 0, 0
	smpsVcDecayRate1    31, 29, 25, 28
	smpsVcDecayRate2    3, 2, 2, 10
	smpsVcDecayLevel    1, 1, 1, 0
	smpsVcReleaseRate   14, 15, 15, 15
	smpsVcTotalLevel    0, 27, 27, 38
```
1. `smpsVcAlgorithm <alg>` defines the algorithm of the instrument.
2. `smpsVcFeedback <fb>` defines the feedback of the instrument.
3. `smpsVcUnusedBits 0` unused, but still required.
4. `smpsVcDetune <dt0>, <dt1>, <dt2>, <dt3>` defines the detune of each operator.
5. `smpsVcCoarseFreq <cf0>, <cf1>, <cf2>, <cf3>` defines the coarse frequency of each operator.
6. `smpsVcRateScale <rs0>, <rs1>, <rs2>, <rs3>` defines the rate scaling of each operator.
7. `smpsVcAttackRate <at0>, <at1>, <at2>, <at3>` defines the attack rate of each operator.
8. `smpsVcAmpMod <am0>, <am1>, <am2>, <am3>` defines the amplitude modulation of each operator.
9. `smpsVcDecayRate1 <dr0>, <dr1>, <dr2>, <dr3>` defines the decay rate of each operator.
10. `smpsVcDecayRate2 <sr0>, <sr1>, <sr2>, <sr3>` defines the sustain rate of each operator.
11. `smpsVcDecayLevel <dl0>, <dl1>, <dl2>, <dl3>` defines the decay level of each operator.
12. `smpsVcReleaseRate <rr0>, <rr1>, <rr2>, <rr3>` defines the release rate of each operator.
13. `smpsVcTotalLevel <tl0>, <tl1>, <tl2>, <tl3>` defines the total level of each operator.
