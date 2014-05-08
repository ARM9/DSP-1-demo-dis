lorom
	org $3FFFF
db 0

;Bank 0
	org $8000

NMI:
CODE_008000:	PHB
				PHK
				PLB
				SEP #$20
				BIT $4210  	;[$00:4210]
				REP #$30   	;
				PHD        	;
				PHA        	;
				PHX        	;
				PHY        	;
				LDA #$0000 	;
				TCD        	;
				SEP #$20   	;
				JSL CODE_0184CF	;[$01:84CF]
				REP #$20   	;
				JSL CODE_01844C	;[$01:844C]
				PLY        	;
				PLX        	;
				PLA        	;
				PLD        	;
				PLB        	;
				RTI        	;

Reset:
				CLC        	;
				XCE        	;
				SEP #$34   	;
				REP #$08   	;
				PHK        	;
				PLB        	;
				STZ $4200  	;[$00:4200]
				STZ $420C  	;[$00:420C]
				STZ $420B  	;[$00:420B]
				LDA #$80   	;
				STA $2100  	;[$00:2100]
				LDX #$FE   	;
				STX $4201  	;[$00:4201]
				INX        	;
				TXS        	;
				PEA $0000  	;
				PLD        	;
				STZ $2133  	;[$00:2133]
				STZ $2130  	;[$00:2130]
				STZ $2131  	;[$00:2131]
				LDA #$11   	;
				STA $212C  	;[$00:212C]
				STZ $212E  	;[$00:212E]
				STZ $2106  	;[$00:2106]
				LDA #$80   	;
				STA $211A  	;[$00:211A]
				LDA #$07   	;
				STA $2105  	;[$00:2105]
				LDA #$01   	;
				STA $00    	;[$00:0000]
				REP #$30   	;
				JSL CODE_0184AC	;[$01:84AC]
				JSL CODE_01842A	;[$01:842A]
				JSL CODE_018351	;[$01:8351]
				SEP #$30   	;
				JSL UPLOAD_PALETTE ;CODE_038110	;[$03:8110]
				REP #$10   	;
				JSL CODE_03812C	;[$03:812C]
				JSL CODE_03869A	;[$03:869A]
				JSL CODE_0388A2	;[$03:88A2]
				REP #$30   	;
				JSL CODE_018308	;[$01:8308]
				JSL CODE_018216	;[$01:8216]
				JSL CODE_01806E	;[$01:806E]
				JSL CODE_018187	;[$01:8187]
				JSL CODE_0183C0	;[$01:83C0]
CODE_00809F:	JSL CODE_018467	;[$01:8467]
				BRA CODE_00809F ;$FA    	;[$809F]

	org $80A5
DATA_0080A5:
db $00, $00, $00, $01, $00, $FF, $00, $00
DATA_0080AD:
db $00, $00, $10, $00, $E0, $FF, $30, $00


IRQ:
CODE_0080B5:	PHB        	;
				PHK        	;
				PLB        	;
				SEP #$20   	;
				PHA        	;
				LDA $14    	;[$00:0014]
				STA $212C  	;[$00:212C]
				LDA $4211  	;[$00:4211]
				PLA        	;
				PLB        	;
				RTI        	;

pointer_data:
incbin "80C6_to_832B.bin"

;	org $82FC
;DATA_82FC: ;Indirect indexed functions
;dw $83AD, $8395, $82D2, $82D0, $82BE, $82AC, $82A0, $8284, $8272, $8260, $824E, $823C
;dw $8230, $8224, $8218, $820C, $8200, $81F4, $81E8, $81DC, $81D0, $81C4, $81B8, $81B6

	org $832C
CODE_00832C:	PLX        	;
				RTL        	;

db $2C, $83, $6B

CODE_008331:	LDY $0A67  	;[$00:0A67]
CODE_008334:	STY $1F    	;[$00:001F]
				LDX $04,y  	;[$00:0969]
				JSR ($0000,x)	;[$00:83AD]
				LDX $1F    	;[$00:001F]
				LDY $02,x  	;[$00:0967]
				BRA $F3    	;[$8334]
				RTS        	;

CODE_008342:	LDY $02,x  	;[$00:82A2]
				LDA $04,x  	;[$00:82A4]
				STA $2B    	;[$00:002B]
				LDA $06,x  	;[$00:82A6]
				STA $2D    	;[$00:002D]
				LDA $08,x  	;[$00:82A8]
				STA $2F    	;[$00:002F]
				CLC        	;
				TXA        	;
				ADC #$000A 	;
				STA $31    	;[$00:0031]
				LDX $35    	;[$00:0035]
CODE_008359:	CLC        	;
				LDA $21    	;[$00:0021]
				ADC ($2B),y	;[$00:818A]
				CMP #$0100 	;
				BCC $05    	;[$8368]
				CMP #$FFC0 	;
				BCC $26    	;[$838E]
CODE_008368:	SEP #$20
				STA $00,x
				LDA ($2F),y
				ROL A
				STA $0220,x
				REP #$21
				LDA $23
				ADC ($2D),y
				CMP #$00E0
				BCC CODE_008382
				CMP #$FFE0
				BCC CODE_00838E
CODE_008382:	STA $01,x
				LDA ($31),y
				EOR $25
				STA $02,x
				INX #4
CODE_00838E:	DEY        	;
				DEY        	;
				BPL $C7    	;[$8359]
				STX $35    	;[$00:0035]
				RTS        	;

CODE_008395:	STX $33    	;[$00:0033]
				LDY $02,x  	;[$00:8300]
				LDA $29    	;[$00:0029]
CODE_00839B:	CMP $0000,y	;[$00:82D2]
				INY        	;
				INY        	;
				BCC CODE_00839B ;$F9    	;[$839B]
				TYA        	;
				SBC $02,x  	;[$00:8300]
				ADC $33    	;[$00:0033]
				TAY        	;
				LDX $01,y  	;[$00:8308]
				JMP ($0000,x)	;[$00:8342]
CODE_0083AD:	TXY         ;
				LDX $1F    	;[$00:001F]
				PEA $00BF  	;
				PLB        	;
				SEP #$20   	;
				LDA #$06   	;Object projection
				STA $8000  	;
				BIT $06    	;[$00:0006]
				REP #$20   	;
				LDA $08,x  	;[$00:096D]
				STA $8000  	;
				BVS CODE_0083D4 ;$0E    	;[$83D4]
				LDA $0A,x  	;[$00:096F]
				STA $8000  	;
				LDA $0C,x  	;[$00:0971]
				STA $8000  	;
				LDA $0E,x  	;[$00:0973]
				BRA CODE_0083EB ;$17    	;[$83EB]
;*** NMI
CODE_0083D4:	SEC        	;
				LDA #$0400 	;
				SBC $0A,x  	;[$00:096F]
				STA $8000  	;
				SEC        	;
				LDA #$0000 	;
				SBC $0C,x  	;[$00:0971]
				STA $8000  	;
				LDA $0E,x  	;[$00:0973]
				EOR #$2000 	;
CODE_0083EB:	STA $25    	;[$00:0025]
				CLC        	;
				LDA #$0080 	;
CODE_0083F1:	BIT $C000  	;
				BPL CODE_0083F1 ;$FB    	;[$83F1]
				ADC $8000  	;
				STA $21    	;[$00:0021]
				CLC        	;
				LDA #$0070 	;
				ADC $8000  	;
				STA $23    	;[$00:0023]
				LDA $8000  	;
				BMI CODE_008414 ;$0B    	;[$8414]
				PLB        	;
				STA $06,x  	;[$00:098B]
				STA $29    	;[$00:0029]
				TYX                    
				INX                    
				INX                    
				JMP ($0000,x)	;[$00:8395]
CODE_008414:	PLB        	;
				STZ $06,x  	;[$00:096B]
				RTS        	;




; Bank 1
	org $018000

UPLOAD_SOMETHING_TO_VRAM:
CODE_018000:	STX $2116  	;[$00:2116]
				LDA #$80   	;
				STA $2115  	;[$00:2115]
				PLX        	;
				PLB        	;
				SEC        	;
				BRA CODE_018033 ;$26    	;[$8033]
CODE_01800D:	STA $01    	;[$00:0001]
				INX        	;
				LDA $0001,x	;[$03:8134]
				XBA        	;
CODE_018014:	LDY #$0008 	;
CODE_018017:	INX        	;
				LDA $0001,x	;[$03:8135]
				ROL A      	;
CODE_01801C:	BCS CODE_018023 ;$05    	;[$8023]
				STZ $2119  	;[$03:2119]
				BRA CODE_018028 ;$05    	;[$8028]
CODE_018023:	XBA        	;
				STA $2119  	;[$03:2119]
				XBA        	;
CODE_018028:	ASL A      	;
				BNE CODE_01801C ;$F1    	;[$801C]
				DEY        	;
				BNE CODE_018017 ;$E9    	;[$8017]
				DEC $01    	;[$00:0001]
				BNE CODE_018014 ;$E2    	;[$8014]
				INX        	;
CODE_018033:	LDA $0001,x	;[$03:8133]
				BNE CODE_01800D ;$D5    	;[$800D]
				PHA        	;
				PLB        	;
				RTL        	;

UPLOAD_SPRITE_DATA:
CODE_01803B:	STX $2116  	;[$00:2116]
				LDA #$80   	;
				STA $2115  	;[$00:2115]
				PLX        	;
				PLB        	;
				LDA $0001,x	;[$03:86A1]
				STA $01    	;[$00:0001]
CODE_01804A:	LDY #$0008 	;
CODE_01804D:	INX        	;
				LDA $0001,x	;[$03:86A2]
				STA $2118  	;[$03:2118]
				STZ $2119  	;[$03:2119]
				DEY        	;
				BNE CODE_01804D ;$F3    	;[$804D]
				REP #$20   	;
				LDA #$0008 	;
CODE_01805F:	STZ $2118  	;[$03:2118]
				DEC A      	;
				BNE CODE_01805F ;$FA    	;[$805F]
				SEP #$20   	;
				DEC $01    	;[$00:0001]
				BNE CODE_01804A ;$DF    	;[$804A]
				PHA        	;
				PLB        	;
				RTL        	;


BIGASS_ROUTINE:
CODE_01806E:	LDX #$021F 	;
				JSL CODE_018430	;[$01:8430]
CODE_018075:	LDA #$0100 	;
				STA $04    	;[$00:0004]
				LDA #$00C0 	;
				STA $06    	;[$00:0006]
				LDA #$0200 	;
				STA $07    	;[$00:0007]
				STA $09    	;[$00:0009]
				LDA #$FF00 	;
				STA $0B    	;[$00:000B]
				LDA #$8000 	;
				STZ $0D    	;[$00:000D]
				STA $0F    	;[$00:000F]
				STZ $11    	;[$00:0011]
CODE_018094:	JSL CODE_018467	;[$01:8467]
				LDA $4218  	;[$00:4218]
				BIT #$1000 	;
				BNE $D5    	;[$8075]
				LDA $04    	;[$00:0004]
				SEP #$21   	;
				LDA $4218  	;[$00:4218]
				AND #$30   	;
				BEQ CODE_0180BF ;$14    	;[$80BF]
				EOR #$30
				BEQ CODE_0180BF
				SBC #$20
				REP #$20
				BEQ CODE_0180B8
				EOR #$FF0F
CODE_0180B8:	XBA
				ADC $04
				BEQ CODE_0180BF
				STA $04
CODE_0180BF:	REP #$30   	;
				LDA $4218  	;[$00:4218]
				AND #$0300 	;
				XBA        	;
				ASL A      	;
				TAX        	;
				LDA $80A5,x	;[$00:80A5]
				BIT $05    	;[$00:0005]
				BVC $04    	;[$80D5]
				EOR #$FFFF 	;
				INC A      	;
CODE_0180D5:	ADC $0D    	;[$00:000D]
				STA $0D    	;[$00:000D]
				LDA $4218  	;[$00:4218]
				AND #$0C00 	;
				XBA        	;
				LSR A      	;
				TAX        	;
				LDA $80A5,x	;[$00:80A5]
				ADC $0F    	;[$00:000F]
				STA $0F    	;[$00:000F]
				SEP #$30   	;
				LDA $4218  	;[$00:4218]
				ASL A      	;
				AND #$80   	;
				ADC #$3F   	;
				ORA $4219  	;[$00:4219]
				ROL A      	;
				ROL A      	;
				ROL A      	;
				ROL A      	;
				AND #$06   	;
				TAX        	;
				PEA $00BF  	;
				PLB        	;
				LDA #$01   	; Begin set Attitude matrix A
				STA $8000  	;
				REP #$21   	;
				LDA #$7FFF 	;
				STA $8000  	;
				LDA $0D    	;[$00:000D]
				STA $8000  	;
				LDA #$C000 	;
				ADC $0F    	;[$00:000F]
				STA $8000  	;
				STZ $8000  	;
				SEP #$21   	;
CODE_018120:	BIT $C000  	;
				BPL $FB    	;[$8120]
				LDA #$03   	; Subjective A
				STA $8000  	;
				REP #$30
				LDA $0080AD,x	;[$00:80AD]
				STA $8000  	;
				STZ $8000  	;
				STZ $8000  	;
				LDA $09    	;[$00:0009]
				SBC $8000  	;
				STA $09    	;[$00:0009]
				SEC        	;
				LDA $07    	;[$00:0007]
				SBC $8000  	;
				STA $07    	;[$00:0007]
				CLC        	;
				LDA $8000  	;
				PLB        	;
				ADC $0B    	;[$00:000B]
				BMI $06    	;[$8157]
				STA $0B    	;[$00:000B]
				JML CODE_018094	;[$01:8094]
CODE_018157:	EOR #$FFFF 	;
				INC A      	;
				STA $0B    	;[$00:000B]
				SEC        	;
				LDA #$0400 	;
				SBC $09    	;[$00:0009]
				STA $09    	;[$00:0009]
				LDA $0F    	;[$00:000F]
				EOR #$8000 	;
				STA $0F    	;[$00:000F]
				SEC        	;
				LDA #$0000 	;
				SBC $0D    	;[$00:000D]
				STA $0D    	;[$00:000D]
				SEP #$20   	;
				LDA #$C0   	;
				EOR $06    	;[$00:0006]
				STA $06    	;[$00:0006]
				ASL A      	;
				JSL CODE_0389F5	;[$03:89F5]
				REP #$20   	;
				JML CODE_018094	;[$01:8094]
CODE_018187:	LDX #$023F 	;
				JSL CODE_018430	;[$01:8430]
CODE_01818E:	SEP #$20   	;
				PEA $00BF  	;
				PLB        	;
				LDA #$02   	; Projection parameter setting
				STA $8000  	;
				LDX $07    	;[$00:0007]
				STX $8000  	;
				LDX $09    	;[$00:0009]
				STX $8000  	;
				LDX $0B    	;[$00:000B]
				STX $8000  	;
				LDX #$0000 	;
				STX $8000  	;
				LDX $04    	;[$00:0004]
				STX $8000  	;
				LDX $0D    	;[$00:000D]
				STX $8000  	;
				LDX $0F    	;[$00:000F]
				STX $8000  	;
CODE_0181BD:	BIT $C000  	;
				BPL $FB    	;[$81BD]
				REP #$31   	;
				LDA $8000  	;
				ADC #$0070 	;
				STA $15    	;[$00:0015]
				CLC        	;
				ADC $8000  	;
				LDX $8000  	;
				STX $17    	;[$00:0017]
				LDY $8000  	;
				STY $19    	;[$00:0019]
				PLB        	;
				TAY        	;
				BPL CODE_0181E1 ;$03    	;[$81E1]
				LDY #$0000	;
CODE_0181E1:	CPY #$00E0 	;
				BCC CODE_0181E9 ;$03    	;[$81E9]
				LDY #$00E0 	;
CODE_0181E9:	LDA #$1011 	;
				CPY #$0070 	;
				LDX $0F    	;[$00:000F]
				BPL $0C    	;[$81FF]
				BCC $15    	;[$820A]
				CPX #$C000 	;
				BCS $10    	;[$820A]
				LDY #$0000 	;
				BRA $0B    	;[$820A]
CODE_0181FF:	XBA        	;
				BCS $08    	;[$820A]
				CPX #$4000	;
				BCC CODE_01820A
				LDY #$00E0
CODE_01820A:	STA $13    	;[$00:0013]
				STY $1B    	;[$00:001B]
				JSL CODE_018467	;[$01:8467]
				JML CODE_01818E	;[$01:818E]
CODE_018216:	LDX #$025F 	;
				JSL CODE_018430	;[$01:8430]
				SEP #$20   	;
				LDA #$43   	;
				STA $4370  	;[$00:4370]
				STA $4360  	;[$00:4360]
				LDA #$1B   	;
				STA $4371  	;[$00:4371]
				LDA #$1D   	;
				STA $4361  	;[$00:4361]
				LDX #$80C6 	;
				STX $4372  	;[$00:4372]
				LDX #$80CD 	;
				STX $4362  	;[$00:4362]
				STZ $4374  	;[$00:4374]
				STZ $4364  	;[$00:4364]
				STZ $4377  	;[$00:4377]
				STZ $4367  	;[$00:4367]
				LDA #$C0   	;
				STA $420C  	;[$00:420C]
				REP #$20   	;
				JSL CODE_018467	;[$01:8467]
				SEP #$20   	;
				LDX #$00F0 	;
				STX $4207  	;[$00:4207]
				LDA #$30   	;
				ORA $00    	;[$00:0000]
				STA $00    	;[$00:0000]
				STA $4200  	;[$00:4200]
				LDA #$0F   	;
				STA $2100  	;[$00:2100]
				REP #$20   	;
CODE_01826C:	LDA $17    	;[$00:0017]
				SEP #$21   	;
				STA $211F  	;[$00:211F]
				SBC #$80   	;
				XBA        	;
				STA $211F  	;[$00:211F]
				SBC #$00   	;
				XBA        	;
				STA $210D  	;[$00:210D]
				XBA        	;
				STA $210D  	;[$00:210D]
				SEC        	;
				LDA $19    	;[$00:0019]
				STA $2120  	;[$00:2120]
				SBC $15    	;[$00:0015]
				XBA        	;
				LDA $1A    	;[$00:001A]
				STA $2120  	;[$00:2120]
				SBC $16    	;[$00:0016]
				XBA        	;
				STA $210E  	;[$00:210E]
				XBA        	;
				STA $210E  	;[$00:210E]
				LDX $1B    	;[$00:001B]
				STX $4209  	;[$00:4209]
				LDA $13    	;[$00:0013]
				STA $212C  	;[$00:212C]
				PEA $00BF  	;
				PLB        	;
				LDA #$0A   	;Raster data
				STA $8000  	;
				REP #$35   	;
				LDA #$0001 	;
				SBC $15    	;[$00:0015]
				STA $8000  	;
				LDX #$0265 	;
CODE_0182BB:	STX $1D    	;[$00:001D]
				SEP #$20   	;
CODE_0182BF:	BIT $C000  	;
				BPL $FB    	;[$82BF]
				REP #$20   	;
				LDY $8000  	;
				LDX $8000  	;
				PHX        	;
				LDA $8000  	;
				LDX $8000  	;
				PHX        	;
				LDX $1D    	;[$00:001D]
				STA $0380,x	;[$BF:05E5]
				PLA        	;
				STA $0382,x	;[$BF:05E7]
				STY $00,x  	;[$00:0265]
				PLY        	;
				STY $02,x  	;[$00:0267]
				INX        	;
				INX        	;
				INX        	;
				INX        	;
				CPX #$05E5 	;
				BNE $D0    	;[$82BB]
				EOR #$8000 	;
CODE_0182EE:	BIT $C000  	;
				BPL $FB    	;[$82EE]
				LDX $8000  	;
				LDX $8000  	;
				LDX $8000  	;
				STA $8000  	;
				PLB        	;
				JSL CODE_018467	;[$01:8467]
				JML CODE_01826C	;[$01:826C]
; End of routine?

CODE_018308:	LDX #$0965 	;
CODE_01830B:	LDY #$80D4 	;
CODE_01830E:	LDA #$82FC 	;
CODE_018311:	STA $04,x  	;[$00:0969]
CODE_018313:	LDA $0000,y	;[$00:80D4]
CODE_018316:	STA $08,x  	;[$00:096D]
CODE_018318:	LDA $0002,y	;[$00:80D6]
CODE_01831B:	STA $0A,x  	;[$00:096F]
CODE_01831D:	LDA $0004,y	;[$00:80D8]
CODE_018320:	STA $0C,x  	;[$00:0971]
CODE_018322:	LDA $0006,y	;[$00:80DA]
CODE_018325:	STA $0E,x  	;[$00:0973]
CODE_018327:	PHY        	;
CODE_018328:	PHX        	;
CODE_018329:	JSL CODE_01835F	;[$01:835F]
CODE_01832D:	CLC        	;
CODE_01832E:	PLA        	;
CODE_01832F:	ADC #$0010 	;
CODE_018332:	TAX        	;
CODE_018333:	CLC        	;
CODE_018334:	PLA        	;
CODE_018335:	ADC #$0008 	;
CODE_018338:	TAY        	;
CODE_018339:	CMP #$8154 	;
CODE_01833C:	BNE $D0    	;[$830E]
CODE_01833E:	SEP #$20   	;
CODE_018340:	LDA #$22   	;
CODE_018342:	STA $2101  	;[$00:2101]
CODE_018345:	REP #$20   	;
CODE_018347:	RTL        	;

CODE_018348:	JSL CODE_008331	;[$00:8331]
CODE_01834C:	JSL CODE_018379	;[$01:8379]
				RTL        	;

CODE_018351:	LDY #$0A65 	;
				TYX        	;
				STY $00,x  	;[$00:0A65]
				STY $02,x  	;[$00:0A67]
				LDY #$832E 	;
				STY $04,x  	;[$00:0A69]
				RTL        	;

CODE_01835F:	LDY #$0A65 	;
CODE_018362:	LDA $0000,y	;[$00:0A65]
CODE_018365:	STX $00,y  	;[$00:0A65]
CODE_018367:	STY $02,x  	;[$00:0967]
CODE_018369:	TAY        	;
CODE_01836A:	STY $00,x  	;[$00:0965]
CODE_01836C:	STX $02,y  	;[$00:0A67]
CODE_01836E:	RTL        	;

CODE_01836F:	LDY $00,x	;
				LDA $02,x
				TAX
				STY $00,x
				STX $02,y
				RTL

CODE_018379:	LDX $0A67  	;[$00:0A67]
CODE_01837C:	TXY        	;
CODE_01837D:	LDX $02,y  	;[$00:0967]
CODE_01837F:	CPX #$0A65 	;
CODE_018382:	BEQ $1C    	;[$83A0]
CODE_018384:	LDA $0006,y	;[$00:096B]
CODE_018387:	CMP $06,x  	;[$00:097B]
CODE_018389:	BCS $F1    	;[$837C]
CODE_01838B:	PHX        	;
CODE_01838C:	LDA $02,x  	;[$00:0987]
CODE_01838E:	TAX        	;
CODE_01838F:	STY $00,x  	;[$00:0995]
CODE_018391:	STX $02,y  	;[$00:0977]
CODE_018393:	PLX        	;
CODE_018394:	LDA $0000,y	;[$00:0975]
CODE_018397:	STX $00,y  	;[$00:0975]
CODE_018399:	STY $02,x  	;[$00:0987]
CODE_01839B:	TAY        	;
CODE_01839C:	STY $00,x  	;[$00:0985]
CODE_01839E:	STX $02,y  	;[$00:0967]
CODE_0183A0:	RTL        	;

CODE_0183A1:	LDX #$0A90 	;
CODE_0183A4:	STX $4312  	;[$00:4312]
CODE_0183A7:	LDX #$0220 	;
CODE_0183AA:	STX $4315  	;[$00:4315]
CODE_0183AD:	STZ $2102  	;[$00:2102]
CODE_0183B0:	STZ $2103  	;[$00:2103]
CODE_0183B3:	LDX #$0A8B 	;
CODE_0183B6:	JSL CODE_0184B1	;[$01:84B1]
CODE_0183BA:	LDA #$02   	;
CODE_0183BC:	STA $420B  	;[$00:420B]
CODE_0183BF:	RTL        	;

CODE_0183C0:	LDX #$0A85 	;
				JSL CODE_018430	;[$01:8430]
				SEP #$20   	;
				LDA #$02   	;
				STA $4310  	;[$00:4310]
				LDA #$04   	;
				STA $4311  	;[$00:4311]
				STZ $4314  	;[$00:4314]
				REP #$20   	;
CODE_0183D8:	LDX #$0A90 	;
				STX $35    	;[$00:0035]
				JSL CODE_018348	;[$01:8348]
				SEP #$20   	;
				LDX $35    	;[$00:0035]
				BRA $0D    	;[$83F4]
CODE_0183E7:	LDA #$80   	;
				STA $00,x  	;[$00:0A90]
				LDA #$01   	;
				STA $0220,x	;[$00:0CB0]
				INX        	;
				INX        	;
				INX        	;
				INX        	;
CODE_0183F4:	CPX #$0C90 	;
				BCC $EE    	;[$83E7]
				LDX #$0EB0 	;
				LDY #$0020 	;
CODE_0183FF:	REP #$21   	;
				TXA        	;
				SBC #$000F 	;
				TAX        	;
				SEP #$20   	;
				LDA $0C,x  	;[$00:0EAC]
				ASL A      	;
				ASL A      	;
				ORA $08,x  	;[$00:0EA8]
				ASL A      	;
				ASL A      	;
				ORA $04,x  	;[$00:0EA4]
				ASL A      	;
				ASL A      	;
				ORA $00,x  	;[$00:0EA0]
				DEY        	;
				STA $0C90,y	;[$00:0CAF]
				BNE $E3    	;[$83FF]
				JSL CODE_0183A1	;[$01:83A1]
				REP #$20   	;
				JSL CODE_018467	;[$01:8467]
				JML CODE_0183D8	;[$01:83D8]

CODE_01842A:	STZ $37    	;[$00:0037]
				STZ $0EB0  	;[$00:0EB0]
				RTL        	;


CODE_018430:	PLY        	;
CODE_018431:	STY $03,x  	;[$00:0262]
CODE_018433:	SEP #$20   	;
CODE_018435:	PLA        	;
CODE_018436:	STA $05,x  	;[$00:0264]
CODE_018438:	REP #$20   	;
CODE_01843A:	LDY $37    	;[$00:0037]
CODE_01843C:	STX $37    	;[$00:0037]
CODE_01843E:	BEQ $08    	;[$8448]
CODE_018440:		LDA $0001,y	;[$00:0260]
CODE_018443:		STX $01,y  	;[$00:0260]
CODE_018445:		STA $01,x  	;[$00:0220]
CODE_018447:		RTL        	;
CODE_018448:	TXY        	;
CODE_018449:	STX $01,y  	;[$00:0260]
CODE_01844B:	RTL        	;

CODE_01844C:	LDX #$0EB0 	;
				LDY $00,x  	;[$00:0EB0]
				BEQ CODE_018466 ;$13    	;[$8466]
				STZ $00,x  	;[$00:0EB0]
				LDX $37    	;[$00:0037]
				STY $37    	;[$00:0037]
				BEQ CODE_018466 ;$0B    	;[$8466]
					LDA $0001,y
					LDY $01,x
					STA $01,x
					LDX $37
					STY $01,x
CODE_018466:	RTL        	;

CODE_018467:	LDX #$0EB0 	;
				PHA        	;
				TSC        	;
				LDY $00,x  	;[$00:0EB0]
CODE_01846E:	STA $00,x  	;[$00:0EB0]
CODE_018470:	BEQ $06    	;[$8478]
					LDA $0001,y	;[$00:00FB]
					TSX        	;
					STX $01,y  	;[$00:00FB]
CODE_018478:	STA $01,s  	;[$00:00FB]
CODE_01847A:	LDX $37    	;[$00:0037]
CODE_01847C:	BNE $21    	;[$849F]

CODE_01847E:	PHP        	;
CODE_01847F:	SEP #$30   	;
CODE_018481:	LDA #$80   	;
CODE_018483:	TSB $00    	;[$00:0000]
CODE_018485:	SEI        	;
CODE_018486:	LDX $00    	;[$00:0000]
CODE_018488:	BIT $4210  	;[$00:4210]
CODE_01848B:	STX $4200  	;[$00:4200]
CODE_01848E:	PLP        	;
CODE_01848F:	PHP        	;
CODE_018490:	SEP #$20   	;
CODE_018492:	LDX $37    	;[$00:0037]
CODE_018494:	BEQ $FC    	;[$8492]
CODE_018496:	TRB $00    	;[$00:0000]
CODE_018498:	SEI        	;
CODE_018499:	LDA $00    	;[$00:0000]
CODE_01849B:	STA $4200  	;[$00:4200]
CODE_01849E:	PLP        	;

CODE_01849F:	LDA $01,x  	;[$00:0A86]
				TCS        	;
				PLY        	;
				STY $01,x  	;[$00:0A86]
				CMP $37    	;[$00:0037]
				BNE $02    	;[$84AB]
				STZ $37    	;[$00:0037]
CODE_0184AB:	RTL        	;

CODE_0184AC:	STZ $39    	;[$00:0039]
				STZ $3B    	;[$00:003B]
				RTL        	;

CODE_0184B1:	LDY $3B    	;[$00:003B]
				STX $3B    	;[$00:003B]
				BNE CODE_0184BA    	;[$84BA]
				STX $39    	;[$00:0039]
				TXY        	;
CODE_0184BA:	STX $00,y  	;[$00:0A8B]
				STZ $00,x  	;[$00:0A8B]
				STZ $01,x  	;[$00:0A8C]
				PLY        	;
				STY $02,x  	;[$00:0A8D]
				PLA        	;
				STA $04,x  	;[$00:0A8F]
				RTL        	;

CODE_0184C7:	LDY $00,x  	;[$00:0A8B]
				STY $39    	;[$00:0039]
				JSL CODE_0184D6	;[$01:84D6]
CODE_0184CF:	LDX $39    	;[$00:0039]
				BNE CODE_0184C7 ;$F4    	;[$84C7]
				STX $3B    	;[$00:003B]
				RTL        	;

CODE_0184D6:	LDA $04,x  	;[$00:0A8F]
				PHA        	;
				LDY $02,x  	;[$00:0A8D]
				PHY        	;
				RTL        	;



	org $38000
palette:
incbin "gfx/palette.pal"

UPLOAD_PALETTE:
CODE_038110:	PHB        	;
				PHK        	;
				PLB        	;
				LDX #$00   	;
				STX $2121  	;[$03:2121]
CODE_038118:	LDA $8000,x	;[$03:8000]
				STA $2122  	;[$03:2122]
				INX        	;
				BNE $F7    	;[$8118]
CODE_038121:	LDA $8010,x	;[$03:8010]
				STA $2122  	;[$03:2122]
				INX        	;
				BNE $F7    	;[$8121]
				PLB        	;
				RTL        	;

CODE_03812C:	LDX #$0000 	; index into vram $2116-2117
				JSL CODE_018000	;[$01:8000]

	org $38133 ;38140
mode7bg: ; also contains sprite data, too lazy to split
incbin "gfx/38133_to_388A1.bin"

	org $3869A
;Embedded in sprite data
CODE_03869A:	LDX #$4000 	;            VRAM address to put sprites at
				JSL CODE_01803B	;[$01:803B]

	org $388A2
DRAW_GRID:
CODE_0388A2:	LDA #$00   	;
				STA $2115  	;[$00:2115]
				LDX #$0000 	;
				STX $2116  	;[$00:2116]
				LDA #$01   	;
CODE_0388AF:	STA $2118  	;[$00:2118]
				INX        	;
				CPX #$4000 	;
				BNE CODE_0388AF ;$F7    	;[$88AF]
				LDX #$0006 	;
				LDY #$1D32 	;
CODE_0388BE:	STY $2116  	;[$00:2116]
				LDA #$1D   	;
CODE_0388C3:	STZ $2118  	;[$00:2118]
				DEC A      	;
				BNE CODE_0388C3 ;$FA    	;[$88C3]
				REP #$21   	;
				TYA        	;
				ADC #$0080 	;
				TAY        	;
				SEP #$20   	;
				DEX        	;
				BNE CODE_0388BE ;$E9    	;[$88BE]
				LDX #$0004 	;
				LDY #$2138 	;
CODE_0388DB:	STY $2116  	;[$00:2116]
				LDA #$10   	;
CODE_0388E0:	STZ $2118  	;[$00:2118]
				DEC A      	;
				BNE CODE_0388E0 ;$FA    	;[$88E0]
				REP #$21   	;
				TYA        	;
				ADC #$0080 	;
				TAY        	;
				SEP #$20   	;
				DEX        	;
				BNE CODE_0388DB ;$E9    	;[$88DB]
				RTL

DATA_0388F3:
nec_logo_map:
	incbin "gfx/neclogo.map"
nintendo_logo_map:
	incbin "gfx/nintlogo.map"
db 0, 0

MAP_UPLOAD_ROUTINE:
CODE_0389F5:	LDX #$8975 	;
				BCC CODE_0389FD ;$03    	;[$89FD]
				LDX #$88F3
CODE_0389FD:	STX $02    	;[$00:0002]
				LDX #$0200 	;
				JSL CODE_0184B1	;[$01:84B1]
				LDA #$00   	;
				STA $2115  	;[$00:2115]
				LDA #$00   	;
				STA $4300  	;[$00:4300]
				LDA #$18   	;
				STA $4301  	;[$00:4301]
				LDX $02    	;[$00:0002]
				LDA #$03   	;
				STX $4302  	;[$00:4302]
				STA $4304  	;[$00:4304]
				LDA #$01   	;
				LDX #$0019 	;
				LDY #$1DB4 	;
				STY $2116  	;[$00:2116]
				STX $4305  	;[$00:4305]
				STA $420B  	;[$00:420B]
				LDY #$1E34 	;
				STY $2116  	;[$00:2116]
				STX $4305  	;[$00:4305]
				STA $420B  	;[$00:420B]
				LDY #$1EB4 	;
				STY $2116  	;[$00:2116]
				STX $4305  	;[$00:4305]
				STA $420B  	;[$00:420B]
				LDY #$1F34 	;
				STY $2116  	;[$00:2116]
				STX $4305  	;[$00:4305]
				STA $420B  	;[$00:420B]
				LDX #$000E 	;
				LDY #$21B9 	;
				STY $2116  	;[$00:2116]
				STX $4305  	;[$00:4305]
				STA $420B  	;[$00:420B]
				LDY #$2239 	;
				STY $2116  	;[$00:2116]
				STX $4305  	;[$00:4305]
				STA $420B  	;[$00:420B]
				RTL


; Header
org $FFC0
	db "DSP-1 disasm by ARM9"
org $FFD5
	db $20 ; mapping
	db $03 ; cart type
	db $07 ; rom size
	db $00 ; ram size
	db $00 ; country code
	db $00 ; licensee code
	db $00 ; version
	dw $FFFF, $FFFF ; dummy complement/chksum

org $FFE4 ; Native vectors
	dw $FFFF
	dw $FFFF
	dw $FFFF
	dw NMI ;$8000 ; NMI
	dw $FFFF
	dw IRQ ;$80B5 ; IRQ

org $FFFC ; Reset vector
	dw Reset ; $8024
