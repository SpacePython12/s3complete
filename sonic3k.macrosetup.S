	padding off	/*  we don't want AS padding out .byte instructions */
	listing purecode	/*  Want listing file, but only the final code in expanded macros */
	supmode on	/*  we don't need warnings about privileged instructions */
	page	0	/*  Don't want form feeds */

notZ80 function cpu,(cpu<>128)&&(cpu<>32988)

/*  make org safer (impossible to overwrite previously assembled bytes) */
org macro address
	if notZ80(MOMCPU)
.diff := address - *
		if .diff < 0
			error "too much stuff before org 0x\{address} (0x\{(-.diff)} bytes)"
		else
			while .diff > 1024
				/*  AS can only generate 1 kb of code on a single line */
				.byte [1024]0xFF
.diff := .diff - 1024
			endm
			.byte [.diff]0xFF
		endif
	else
		if address < 0x
			error "too much stuff before org 0\{address}h (0\{(0x-address)}h bytes)"
		else
			while address > 0x
				db 0
			endm
		endif
	endif
    endm

/*  define an alternate org that fills the extra %space with 0s instead of FFs */
org0 macro address
.diff := address - *
	if .diff < 0
		error "too much stuff before org0 0x\{address} (0x\{(-.diff)} bytes)"
	else
		while .diff > 1024
			/*  AS can only generate 1 kb of code on a single line */
			.byte [1024]0
.diff := .diff - 1024
		endm
		.byte [.diff]0
	endif
    endm

/*  define the cnop pseudo-instruction */
cnop macro offset,.balignment
	if notZ80(MOMCPU)
		org (*-1+(.balignment)-((*-1+(-(offset)))#(.balignment)))
	else
		org (0x-1+(.balignment)-((0x-1+(-(offset)))#(.balignment)))
	endif
    endm

/*  define an alternate cnop that fills the extra %space with 0s instead of FFs */
cnop0 macro offset,.balignment
	org0 (*-1+(.balignment)-((*-1+(-(offset)))#(.balignment)))
    endm

/*  redefine .balign in terms of cnop, because the built-in .balign can be stupid sometimes */
.balign macro .balignment
	cnop 0,.balignment
    endm

/*  define an alternate .balign that fills the extra %space with 0s instead of FFs */
.balign0 macro .balignment
	cnop0 0,.balignment
    endm

/*  define the .balign 2 pseudo-instruction */
.balign 2 macro
	.balign0 2
    endm

/*  define a trace macro */
/*  lets you easily check what address a location in this disassembly assembles to */
trace macro optionalMessageWithoutQuotes
	if MOMPASS=1
		if ("ALLARGS"<>"")
			message "#\{tracenum/1.0}: line=\{MOMLINE/1.0} PC=0x\{(*)&0xFFFFFFFF} msg=ALLARGS"
		else
			message "#\{tracenum/1.0}: line=\{MOMLINE/1.0} PC=0x\{(*)&0xFFFFFFFF}"
		endif
tracenum := (tracenum+1)
	endif
   endm
tracenum := 0
