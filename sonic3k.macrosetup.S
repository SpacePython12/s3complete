

/* define the cnop pseudo-instruction*/
.macro cnop offset,alignment
	.if notZ80(MOMCPU)
		.org (*-1+(alignment)-((*-1+(-(offset)))#(alignment)))
	.else
		.org (0x-1+(alignment)-((0x-1+(-(offset)))#(alignment)))
	.endif
    .endm

/* define an alternate cnop that fills the extra space with 0s instead of FFs*/
.macro cnop0 offset,alignment
	org0 (*-1+(alignment)-((*-1+(-(offset)))#(alignment)))
    .endm

/* redefine .align in terms of cnop, because the built-in .align can be stupid sometimes*/
.macro align alignment
	cnop 0,alignment
    .endm

/* define an alternate .align that fills the extra space with 0s instead of FFs*/
.macro align0 alignment
	cnop0 0,alignment
    .endm

/* define the even pseudo-instruction*/
.macro even 
	align0 2
    .endm
