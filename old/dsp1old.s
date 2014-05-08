lorom
org $3FFFF
db 0
org $8000

NMI:
CODE_008000:	PHB                    
CODE_008001:	PHK                    
CODE_008002:	PLB                    
CODE_008003:	SEP #$20               
CODE_008005:	BIT $4210  	;[$00:4210]  
CODE_008008:	REP #$30   	;            
CODE_00800A:	PHD        	;            
CODE_00800B:	PHA        	;            
CODE_00800C:	PHX        	;            
CODE_00800D:	PHY        	;            
CODE_00800E:	LDA #$0000 	;            
CODE_008011:	TCD        	;            
CODE_008012:	SEP #$20   	;            
CODE_008014:	JSL $0184CF	;[$01:84CF]  

Reset:
CODE_008024:	CLC        	;            
CODE_008025:	XCE        	;            
CODE_008026:	SEP #$34   	;            
CODE_008028:	REP #$08   	;            
CODE_00802A:	PHK        	;            
CODE_00802B:	PLB        	;            
CODE_00802C:	STZ $4200  	;[$00:4200]  
CODE_00802F:	STZ $420C  	;[$00:420C]  
CODE_008032:	STZ $420B  	;[$00:420B]  
CODE_008035:	LDA #$80   	;            
CODE_008037:	STA $2100  	;[$00:2100]  
CODE_00803A:	LDX #$FE   	;            
CODE_00803C:	STX $4201  	;[$00:4201]  
CODE_00803F:	INX        	;            
CODE_008040:	TXS        	;            
CODE_008041:	PEA $0000  	;            
CODE_008044:	PLD        	;            
CODE_008045:	STZ $2133  	;[$00:2133]  
CODE_008048:	STZ $2130  	;[$00:2130]  
CODE_00804B:	STZ $2131  	;[$00:2131]  
CODE_00804E:	LDA #$11   	;            
CODE_008050:	STA $212C  	;[$00:212C]  
CODE_008053:	STZ $212E  	;[$00:212E]  
CODE_008056:	STZ $2106  	;[$00:2106]  
CODE_008059:	LDA #$80   	;            
CODE_00805B:	STA $211A  	;[$00:211A]  
CODE_00805E:	LDA #$07   	;            
CODE_008060:	STA $2105  	;[$00:2105]  
CODE_008063:	LDA #$01   	;            
CODE_008065:	STA $00    	;[$00:0000]  
CODE_008067:	REP #$30   	;            
CODE_008069:	JSL $0184AC	;[$01:84AC]  
								;
								;
CODE_0184AC:	STZ $39    	;[$00:0039]  
CODE_0184AE:	STZ $3B    	;[$00:003B]  
CODE_0184B0:	RTL        	;            
								;
								;
CODE_00806D:	JSL $01842A	;[$01:842A]  
								;
								;
CODE_01842A:	STZ $37    	;[$00:0037]  
CODE_01842C:	STZ $0EB0  	;[$00:0EB0]  
CODE_01842F:	RTL        	;            
								;
								;
CODE_008071:	JSL $018351	;[$01:8351]  
								;
								;
CODE_018351:	LDY #$0A65 	;            
CODE_018354:	TYX        	;            
CODE_018355:	STY $00,x  	;[$00:0A65]  
CODE_018357:	STY $02,x  	;[$00:0A67]  
CODE_018359:	LDY #$832E 	;            
CODE_01835C:	STY $04,x  	;[$00:0A69]  
CODE_01835E:	RTL        	;            
								;
								;
CODE_008075:	SEP #$30   	;            
CODE_008077:	JSL $038110	;[$03:8110]  
								;
								;
CODE_038110:	PHB        	;            
CODE_038111:	PHK        	;            
CODE_038112:	PLB        	;            
CODE_038113:	LDX #$00   	;            
CODE_038115:	STX $2121  	;[$03:2121]  
CODE_038118:	LDA $8000,x	;[$03:8000]  
CODE_03811B:	STA $2122  	;[$03:2122]  
CODE_03811E:	INX        	;            
CODE_03811F:	BNE $F7    	;[$8118]     
CODE_038121:	LDA $8010,x	;[$03:8010]  
CODE_038124:	STA $2122  	;[$03:2122]  
CODE_038127:	INX        	;            
CODE_038128:	BNE $F7    	;[$8121]     
CODE_03812A:	PLB        	;            
CODE_03812B:	RTL        	;            
								;
								;
CODE_00807B:	REP #$10   	;            
CODE_00807D:	JSL $03812C	;[$03:812C]  
								;
								;
CODE_03812C:	LDX #$0000 	;            
CODE_03812F:	JSL $018000	;[$01:8000]  
								;
								;
CODE_018000:	STX $2116  	;[$00:2116]  
CODE_018003:	LDA #$80   	;            
CODE_018005:	STA $2115  	;[$00:2115]  
CODE_018008:	PLX        	;            
CODE_018009:	PLB        	;            
CODE_01800A:	SEC        	;            
CODE_01800B:	BRA $26    	;[$8033]     
CODE_018033:	LDA $0001,x	;[$03:8133]  
CODE_018036:	BNE $D5    	;[$800D]     
CODE_01800D:	STA $01    	;[$00:0001]  
CODE_01800F:	INX        	;            
CODE_018010:	LDA $0001,x	;[$03:8134]  
CODE_018013:	XBA        	;            
CODE_018014:	LDY #$0008 	;            
CODE_018017:	INX        	;            
CODE_018018:	LDA $0001,x	;[$03:8135]  
CODE_01801B:	ROL A      	;            
CODE_01801C:	BCS $05    	;[$8023]     
CODE_01801E:	STZ $2119  	;[$03:2119]  
CODE_018021:	BRA $05    	;[$8028]     
CODE_018028:	ASL A      	;            
CODE_018029:	BNE $F1    	;[$801C]     
CODE_01802B:	DEY        	;            
CODE_01802C:	BNE $E9    	;[$8017]     
CODE_01802E:	DEC $01    	;[$00:0001]  
CODE_018030:	BNE $E2    	;[$8014]     
CODE_018023:	XBA        	;            
CODE_018024:	STA $2119  	;[$03:2119]  
CODE_018027:	XBA        	;            
CODE_018032:	INX        	;            
CODE_018038:	PHA        	;            
CODE_018039:	PLB        	;            
CODE_01803A:	RTL        	;            
								;
								;
CODE_008081:	JSL $03869A	;[$03:869A]  
								;
								;
CODE_03869A:	LDX #$4000 	;            
CODE_03869D:	JSL $01803B	;[$01:803B]  
								;
								;
CODE_01803B:	STX $2116  	;[$00:2116]  
CODE_01803E:	LDA #$80   	;            
CODE_018040:	STA $2115  	;[$00:2115]  
CODE_018043:	PLX        	;            
CODE_018044:	PLB        	;            
CODE_018045:	LDA $0001,x	;[$03:86A1]  
CODE_018048:	STA $01    	;[$00:0001]  
CODE_01804A:	LDY #$0008 	;            
CODE_01804D:	INX        	;            
CODE_01804E:	LDA $0001,x	;[$03:86A2]  
CODE_018051:	STA $2118  	;[$03:2118]  
CODE_018054:	STZ $2119  	;[$03:2119]  
CODE_018057:	DEY        	;            
CODE_018058:	BNE $F3    	;[$804D]     
CODE_01805A:	REP #$20   	;            
CODE_01805C:	LDA #$0008 	;            
CODE_01805F:	STZ $2118  	;[$03:2118]  
CODE_018062:	DEC A      	;            
CODE_018063:	BNE $FA    	;[$805F]     
CODE_018065:	SEP #$20   	;            
CODE_018067:	DEC $01    	;[$00:0001]  
CODE_018069:	BNE $DF    	;[$804A]     
CODE_01806B:	PHA        	;            
CODE_01806C:	PLB        	;            
CODE_01806D:	RTL        	;            
								;
								;
CODE_008085:	JSL $0388A2	;[$03:88A2]  
								;
								;
CODE_0388A2:	LDA #$00   	;            
CODE_0388A4:	STA $2115  	;[$00:2115]  
CODE_0388A7:	LDX #$0000 	;            
CODE_0388AA:	STX $2116  	;[$00:2116]  
CODE_0388AD:	LDA #$01   	;            
CODE_0388AF:	STA $2118  	;[$00:2118]  
CODE_0388B2:	INX        	;            
CODE_0388B3:	CPX #$4000 	;            
CODE_0388B6:	BNE $F7    	;[$88AF]     
CODE_0388B8:	LDX #$0006 	;            
CODE_0388BB:	LDY #$1D32 	;            
CODE_0388BE:	STY $2116  	;[$00:2116]  
CODE_0388C1:	LDA #$1D   	;            
CODE_0388C3:	STZ $2118  	;[$00:2118]  
CODE_0388C6:	DEC A      	;            
CODE_0388C7:	BNE $FA    	;[$88C3]     
CODE_0388C9:	REP #$21   	;            
CODE_0388CB:	TYA        	;            
CODE_0388CC:	ADC #$0080 	;            
CODE_0388CF:	TAY        	;            
CODE_0388D0:	SEP #$20   	;            
CODE_0388D2:	DEX        	;            
CODE_0388D3:	BNE $E9    	;[$88BE]     
CODE_0388D5:	LDX #$0004 	;            
CODE_0388D8:	LDY #$2138 	;            
CODE_0388DB:	STY $2116  	;[$00:2116]  
CODE_0388DE:	LDA #$10   	;            
CODE_0388E0:	STZ $2118  	;[$00:2118]  
CODE_0388E3:	DEC A      	;            
CODE_0388E4:	BNE $FA    	;[$88E0]     
CODE_0388E6:	REP #$21   	;            
CODE_0388E8:	TYA        	;            
CODE_0388E9:	ADC #$0080 	;            
CODE_0388EC:	TAY        	;            
CODE_0388ED:	SEP #$20   	;            
CODE_0388EF:	DEX        	;            
CODE_0388F0:	BNE $E9    	;[$88DB]     
CODE_0388F2:	RTL        	;            
								;
								;
CODE_008089:	REP #$30   	;            
CODE_00808B:	JSL $018308	;[$01:8308]  
								;
								;
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
CODE_018329:	JSL $01835F	;[$01:835F]  
								;
								;
CODE_01835F:	LDY #$0A65 	;            
CODE_018362:	LDA $0000,y	;[$00:0A65]  
CODE_018365:	STX $00,y  	;[$00:0A65]  
CODE_018367:	STY $02,x  	;[$00:0967]  
CODE_018369:	TAY        	;            
CODE_01836A:	STY $00,x  	;[$00:0965]  
CODE_01836C:	STX $02,y  	;[$00:0A67]  
CODE_01836E:	RTL        	;            
								;
								;
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
								;
								;
CODE_01833E:	SEP #$20   	;            
CODE_018340:	LDA #$22   	;            
CODE_018342:	STA $2101  	;[$00:2101]  
CODE_018345:	REP #$20   	;            
CODE_018347:	RTL        	;            
								;
								;
CODE_00808F:	JSL $018216	;[$01:8216]  
								;
								;
CODE_018216:	LDX #$025F 	;            
CODE_018219:	JSL $018430	;[$01:8430]  
								;
								;
CODE_018430:	PLY        	;            
CODE_018431:	STY $03,x  	;[$00:0262]  
CODE_018433:	SEP #$20   	;            
CODE_018435:	PLA        	;            
CODE_018436:	STA $05,x  	;[$00:0264]  
CODE_018438:	REP #$20   	;            
CODE_01843A:	LDY $37    	;[$00:0037]  
CODE_01843C:	STX $37    	;[$00:0037]  
CODE_01843E:	BEQ $08    	;[$8448]     
CODE_018448:	TXY        	;            
CODE_018449:	STX $01,y  	;[$00:0260]  
CODE_01844B:	RTL        	;            
								;
								;
CODE_008093:	JSL $01806E	;[$01:806E]  
								;
								;
CODE_01806E:	LDX #$021F 	;            
CODE_018071:	JSL $018430	;[$01:8430]  
								;
								;
CODE_018440:	LDA $0001,y	;[$00:0260]  
CODE_018443:	STX $01,y  	;[$00:0260]  
CODE_018445:	STA $01,x  	;[$00:0220]  
CODE_018447:	RTL        	;            
								;
								;
CODE_008097:	JSL $018187	;[$01:8187]  
								;
								;
CODE_018187:	LDX #$023F 	;            
CODE_01818A:	JSL $018430	;[$01:8430]  
								;
								;
CODE_00809B:	JSL $0183C0	;[$01:83C0]  
								;
								;
CODE_0183C0:	LDX #$0A85 	;            
CODE_0183C3:	JSL $018430	;[$01:8430]  
								;
								;
CODE_00809F:	JSL $018467	;[$01:8467]  
								;
								;
CODE_018467:	LDX #$0EB0 	;            
CODE_01846A:	PHA        	;            
CODE_01846B:	TSC        	;            
CODE_01846C:	LDY $00,x  	;[$00:0EB0]  
CODE_01846E:	STA $00,x  	;[$00:0EB0]  
CODE_018470:	BEQ $06    	;[$8478]     
CODE_018478:	STA $01,s  	;[$00:00FB]  
CODE_01847A:	LDX $37    	;[$00:0037]  
CODE_01847C:	BNE $21    	;[$849F]     
CODE_01849F:	LDA $01,x  	;[$00:0A86]  
CODE_0184A1:	TCS        	;            
CODE_0184A2:	PLY        	;            
CODE_0184A3:	STY $01,x  	;[$00:0A86]  
CODE_0184A5:	CMP $37    	;[$00:0037]  
CODE_0184A7:	BNE $02    	;[$84AB]     
CODE_0184AB:	RTL        	;            
								;
								;
CODE_01821D:	SEP #$20   	;            
CODE_01821F:	LDA #$43   	;            
CODE_018221:	STA $4370  	;[$00:4370]  
CODE_018224:	STA $4360  	;[$00:4360]  
CODE_018227:	LDA #$1B   	;            
CODE_018229:	STA $4371  	;[$00:4371]  
CODE_01822C:	LDA #$1D   	;            
CODE_01822E:	STA $4361  	;[$00:4361]  
CODE_018231:	LDX #$80C6 	;            
CODE_018234:	STX $4372  	;[$00:4372]  
CODE_018237:	LDX #$80CD 	;            
CODE_01823A:	STX $4362  	;[$00:4362]  
CODE_01823D:	STZ $4374  	;[$00:4374]  
CODE_018240:	STZ $4364  	;[$00:4364]  
CODE_018243:	STZ $4377  	;[$00:4377]  
CODE_018246:	STZ $4367  	;[$00:4367]  
CODE_018249:	LDA #$C0   	;            
CODE_01824B:	STA $420C  	;[$00:420C]  
CODE_01824E:	REP #$20   	;            
CODE_018250:	JSL $018467	;[$01:8467]  
								;
								;
CODE_018472:	LDA $0001,y	;[$00:00FB]  
CODE_018475:	TSX        	;            
CODE_018476:	STX $01,y  	;[$00:00FB]  
								;
								;
CODE_018075:	LDA #$0100 	;            
CODE_018078:	STA $04    	;[$00:0004]  
CODE_01807A:	LDA #$00C0 	;            
CODE_01807D:	STA $06    	;[$00:0006]  
CODE_01807F:	LDA #$0200 	;            
CODE_018082:	STA $07    	;[$00:0007]  
CODE_018084:	STA $09    	;[$00:0009]  
CODE_018086:	LDA #$FF00 	;            
CODE_018089:	STA $0B    	;[$00:000B]  
CODE_01808B:	LDA #$8000 	;            
CODE_01808E:	STZ $0D    	;[$00:000D]  
CODE_018090:	STA $0F    	;[$00:000F]  
CODE_018092:	STZ $11    	;[$00:0011]  
CODE_018094:	JSL $018467	;[$01:8467]  
								;
								;
CODE_01818E:	SEP #$20   	;            
CODE_018190:	PEA $00BF  	;            
CODE_018193:	PLB        	;            
CODE_018194:	LDA #$02   	;            
CODE_018196:	STA $8000  	;[$BF:8000]  
CODE_018199:	LDX $07    	;[$00:0007]  
CODE_01819B:	STX $8000  	;[$BF:8000]  
CODE_01819E:	LDX $09    	;[$00:0009]  
CODE_0181A0:	STX $8000  	;[$BF:8000]  
CODE_0181A3:	LDX $0B    	;[$00:000B]  
CODE_0181A5:	STX $8000  	;[$BF:8000]  
CODE_0181A8:	LDX #$0000 	;            
CODE_0181AB:	STX $8000  	;[$BF:8000]  
CODE_0181AE:	LDX $04    	;[$00:0004]  
CODE_0181B0:	STX $8000  	;[$BF:8000]  
CODE_0181B3:	LDX $0D    	;[$00:000D]  
CODE_0181B5:	STX $8000  	;[$BF:8000]  
CODE_0181B8:	LDX $0F    	;[$00:000F]  
CODE_0181BA:	STX $8000  	;[$BF:8000]  
CODE_0181BD:	BIT $C000  	;[$BF:C000]  
CODE_0181C0:	BPL $FB    	;[$81BD]     
CODE_0181C2:	REP #$31   	;            
CODE_0181C4:	LDA $8000  	;[$BF:8000]  
CODE_0181C7:	ADC #$0070 	;            
CODE_0181CA:	STA $15    	;[$00:0015]  
CODE_0181CC:	CLC        	;            
CODE_0181CD:	ADC $8000  	;[$BF:8000]  
CODE_0181D0:	LDX $8000  	;[$BF:8000]  
CODE_0181D3:	STX $17    	;[$00:0017]  
CODE_0181D5:	LDY $8000  	;[$BF:8000]  
CODE_0181D8:	STY $19    	;[$00:0019]  
CODE_0181DA:	PLB        	;            
CODE_0181DB:	TAY        	;            
CODE_0181DC:	BPL $03    	;[$81E1]     
CODE_0181E1:	CPY #$00E0 	;            
CODE_0181E4:	BCC $03    	;[$81E9]     
CODE_0181E6:	LDY #$00E0 	;            
CODE_0181E9:	LDA #$1011 	;            
CODE_0181EC:	CPY #$0070 	;            
CODE_0181EF:	LDX $0F    	;[$00:000F]  
CODE_0181F1:	BPL $0C    	;[$81FF]     
CODE_0181F3:	BCC $15    	;[$820A]     
CODE_0181F5:	CPX #$C000 	;            
CODE_0181F8:	BCS $10    	;[$820A]     
CODE_0181FA:	LDY #$0000 	;            
CODE_0181FD:	BRA $0B    	;[$820A]     
CODE_01820A:	STA $13    	;[$00:0013]  
CODE_01820C:	STY $1B    	;[$00:001B]  
CODE_01820E:	JSL $018467	;[$01:8467]  
								;
								;
CODE_0184A9:	STZ $37    	;[$00:0037]  
								;
								;
CODE_0183C7:	SEP #$20   	;            
CODE_0183C9:	LDA #$02   	;            
CODE_0183CB:	STA $4310  	;[$00:4310]  
CODE_0183CE:	LDA #$04   	;            
CODE_0183D0:	STA $4311  	;[$00:4311]  
CODE_0183D3:	STZ $4314  	;[$00:4314]  
CODE_0183D6:	REP #$20   	;            
CODE_0183D8:	LDX #$0A90 	;            
CODE_0183DB:	STX $35    	;[$00:0035]  
CODE_0183DD:	JSL $018348	;[$01:8348]  
								;
								;
CODE_018348:	JSL $008331	;[$00:8331]  
								;
								;
CODE_008331:	LDY $0A67  	;[$00:0A67]  
CODE_008334:	STY $1F    	;[$00:001F]  
CODE_008336:	LDX $04,y  	;[$00:0969]  
CODE_008338:	JSR ($0000,x)	;[$00:83AD]
	
	
CODE_0083AD:	TXY                    
CODE_0083AE:	LDX $1F    	;[$00:001F]  
CODE_0083B0:	PEA $00BF  	;            
CODE_0083B3:	PLB        	;            
CODE_0083B4:	SEP #$20   	;            
CODE_0083B6:	LDA #$06   	;            
CODE_0083B8:	STA $8000  	;[$BF:8000]  
CODE_0083BB:	BIT $06    	;[$00:0006]  
CODE_0083BD:	REP #$20   	;            
CODE_0083BF:	LDA $08,x  	;[$00:096D]  
CODE_0083C1:	STA $8000  	;[$BF:8000]  
CODE_0083C4:	BVS $0E    	;[$83D4]     
CODE_0083D4:	SEC        	;            
CODE_0083D5:	LDA #$0400 	;            
CODE_0083D8:	SBC $0A,x  	;[$00:096F]  
CODE_0083DA:	STA $8000  	;[$BF:8000]  
CODE_0083DD:	SEC        	;            
CODE_0083DE:	LDA #$0000 	;            
CODE_0083E1:	SBC $0C,x  	;[$00:0971]  
CODE_0083E3:	STA $8000  	;[$BF:8000]  
CODE_0083E6:	LDA $0E,x  	;[$00:0973]  
CODE_0083E8:	EOR #$2000 	;            
CODE_0083EB:	STA $25    	;[$00:0025]  
CODE_0083ED:	CLC        	;            
CODE_0083EE:	LDA #$0080 	;            
CODE_0083F1:	BIT $C000  	;[$BF:C000]  
CODE_0083F4:	BPL $FB    	;[$83F1]     
CODE_0083F6:	ADC $8000  	;[$BF:8000]  
CODE_0083F9:	STA $21    	;[$00:0021]  
CODE_0083FB:	CLC        	;            
CODE_0083FC:	LDA #$0070 	;            
CODE_0083FF:	ADC $8000  	;[$BF:8000]  
CODE_008402:	STA $23    	;[$00:0023]  
CODE_008404:	LDA $8000  	;[$BF:8000]  
CODE_008407:	BMI $0B    	;[$8414]     
CODE_008414:	PLB        	;            
CODE_008415:	STZ $06,x  	;[$00:096B]  
CODE_008417:	RTS        	;            
	
	
CODE_00833B:	LDX $1F    	;[$00:001F]  
CODE_00833D:	LDY $02,x  	;[$00:0967]  
CODE_00833F:	BRA $F3    	;[$8334]     
	
	
CODE_008409:	PLB        	;            
CODE_00840A:	STA $06,x  	;[$00:098B]  
CODE_00840C:	STA $29    	;[$00:0029]  
CODE_00840E:	TYX                    
CODE_00840F:	INX                    
CODE_008410:	INX                    
CODE_008411:	JMP ($0000,x)	;[$00:8395]
CODE_008395:	STX $33    	;[$00:0033]  
CODE_008397:	LDY $02,x  	;[$00:8300]  
CODE_008399:	LDA $29    	;[$00:0029]  
CODE_00839B:	CMP $0000,y	;[$00:82D2]  
CODE_00839E:	INY        	;            
CODE_00839F:	INY        	;            
CODE_0083A0:	BCC $F9    	;[$839B]     
CODE_0083A2:	TYA        	;            
CODE_0083A3:	SBC $02,x  	;[$00:8300]  
CODE_0083A5:	ADC $33    	;[$00:0033]  
CODE_0083A7:	TAY        	;            
CODE_0083A8:	LDX $01,y  	;[$00:8308]  
CODE_0083AA:	JMP ($0000,x)	;[$00:8342]
CODE_008342:	LDY $02,x  	;[$00:82A2]  
CODE_008344:	LDA $04,x  	;[$00:82A4]  
CODE_008346:	STA $2B    	;[$00:002B]  
CODE_008348:	LDA $06,x  	;[$00:82A6]  
CODE_00834A:	STA $2D    	;[$00:002D]  
CODE_00834C:	LDA $08,x  	;[$00:82A8]  
CODE_00834E:	STA $2F    	;[$00:002F]  
CODE_008350:	CLC        	;            
CODE_008351:	TXA        	;            
CODE_008352:	ADC #$000A 	;            
CODE_008355:	STA $31    	;[$00:0031]  
CODE_008357:	LDX $35    	;[$00:0035]  
CODE_008359:	CLC        	;            
CODE_00835A:	LDA $21    	;[$00:0021]  
CODE_00835C:	ADC ($2B),y	;[$00:818A]  
CODE_00835E:	CMP #$0100 	;            
CODE_008361:	BCC $05    	;[$8368]     
CODE_008363:	CMP #$FFC0 	;            
CODE_008366:	BCC $26    	;[$838E]     
CODE_00838E:	DEY        	;            
CODE_00838F:	DEY        	;            
CODE_008390:	BPL $C7    	;[$8359]     
CODE_008392:	STX $35    	;[$00:0035]  
CODE_008394:	RTS        	;            
	;	
	;	
CODE_008341:	RTS        	;            
	;	
	;	
CODE_00832C:	PLX        	;            
CODE_00832D:	RTL        	;            
	;	
	;	
CODE_01834C:	JSL $018379	;[$01:8379]  
	;	
	;	
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
	;	
	;	
CODE_018350:	RTL        	;            
	;	
	;	
CODE_0183E1:	SEP #$20   	;            
CODE_0183E3:	LDX $35    	;[$00:0035]  
CODE_0183E5:	BRA $0D    	;[$83F4]     
CODE_0183F4:	CPX #$0C90 	;            
CODE_0183F7:	BCC $EE    	;[$83E7]     
CODE_0183E7:	LDA #$80   	;            
CODE_0183E9:	STA $00,x  	;[$00:0A90]  
CODE_0183EB:	LDA #$01   	;            
CODE_0183ED:	STA $0220,x	;[$00:0CB0]  
CODE_0183F0:	INX        	;            
CODE_0183F1:	INX        	;            
CODE_0183F2:	INX        	;            
CODE_0183F3:	INX        	;            
CODE_0183F9:	LDX #$0EB0 	;            
CODE_0183FC:	LDY #$0020 	;            
CODE_0183FF:	REP #$21   	;            
CODE_018401:	TXA        	;            
CODE_018402:	SBC #$000F 	;            
CODE_018405:	TAX        	;            
CODE_018406:	SEP #$20   	;            
CODE_018408:	LDA $0C,x  	;[$00:0EAC]  
CODE_01840A:	ASL A      	;            
CODE_01840B:	ASL A      	;            
CODE_01840C:	ORA $08,x  	;[$00:0EA8]  
CODE_01840E:	ASL A      	;            
CODE_01840F:	ASL A      	;            
CODE_018410:	ORA $04,x  	;[$00:0EA4]  
CODE_018412:	ASL A      	;            
CODE_018413:	ASL A      	;            
CODE_018414:	ORA $00,x  	;[$00:0EA0]  
CODE_018416:	DEY        	;            
CODE_018417:	STA $0C90,y	;[$00:0CAF]  
CODE_01841A:	BNE $E3    	;[$83FF]     
CODE_01841C:	JSL $0183A1	;[$01:83A1]  
	;	
	;	
CODE_0183A1:	LDX #$0A90 	;            
CODE_0183A4:	STX $4312  	;[$00:4312]  
CODE_0183A7:	LDX #$0220 	;            
CODE_0183AA:	STX $4315  	;[$00:4315]  
CODE_0183AD:	STZ $2102  	;[$00:2102]  
CODE_0183B0:	STZ $2103  	;[$00:2103]  
CODE_0183B3:	LDX #$0A8B 	;            
CODE_0183B6:	JSL $0184B1	;[$01:84B1]  
	;	
	;	
CODE_0184B1:	LDY $3B    	;[$00:003B]  
CODE_0184B3:	STX $3B    	;[$00:003B]  
CODE_0184B5:	BNE $03    	;[$84BA]     
CODE_0184B7:	STX $39    	;[$00:0039]  
CODE_0184B9:	TXY        	;            
CODE_0184BA:	STX $00,y  	;[$00:0A8B]  
CODE_0184BC:	STZ $00,x  	;[$00:0A8B]  
CODE_0184BE:	STZ $01,x  	;[$00:0A8C]  
CODE_0184C0:	PLY        	;            
CODE_0184C1:	STY $02,x  	;[$00:0A8D]  
CODE_0184C3:	PLA        	;            
CODE_0184C4:	STA $04,x  	;[$00:0A8F]  
CODE_0184C6:	RTL        	;            
	;	
	;	
CODE_018420:	REP #$20   	;            
CODE_018422:	JSL $018467	;[$01:8467]  
	;	
	;	
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
	;	
	;	
	;	
CODE_0184CF:	LDX $39    	;[$00:0039]  
CODE_0184D1:	BNE $F4    	;[$84C7]     
CODE_0184C7:	LDY $00,x  	;[$00:0A8B]  
CODE_0184C9:	STY $39    	;[$00:0039]  
CODE_0184CB:	JSL $0184D6	;[$01:84D6]  
	;	
	;	
CODE_0184D6:	LDA $04,x  	;[$00:0A8F]  
CODE_0184D8:	PHA        	;            
CODE_0184D9:	LDY $02,x  	;[$00:0A8D]  
CODE_0184DB:	PHY        	;            
CODE_0184DC:	RTL        	;            
	;	
	;	
CODE_0183BA:	LDA #$02   	;            
CODE_0183BC:	STA $420B  	;[$00:420B]  
CODE_0183BF:	RTL        	;            
	;	
	;	
CODE_0184D3:	STX $3B    	;[$00:003B]  
CODE_0184D5:	RTL        	;            
	;	
	;	
CODE_008018:	REP #$20   	;            
CODE_00801A:	JSL $01844C	;[$01:844C]  
	;	
	;	
CODE_01844C:	LDX #$0EB0 	;            
CODE_01844F:	LDY $00,x  	;[$00:0EB0]  
CODE_018451:	BEQ $13    	;[$8466]     
CODE_018453:	STZ $00,x  	;[$00:0EB0]  
CODE_018455:	LDX $37    	;[$00:0037]  
CODE_018457:	STY $37    	;[$00:0037]  
CODE_018459:	BEQ $0B    	;[$8466]     
CODE_018466:	RTL        	;            
	;	
	;	
CODE_00801E:	PLY        	;            
CODE_00801F:	PLX        	;            
CODE_008020:	PLA        	;            
CODE_008021:	PLD        	;            
CODE_008022:	PLB        	;            
CODE_008023:	RTI        	;            
CODE_018496:	TRB $00    	;[$00:0000]  
CODE_018498:	SEI        	;            
CODE_018499:	LDA $00    	;[$00:0000]  
CODE_01849B:	STA $4200  	;[$00:4200]  
CODE_01849E:	PLP        	;            
	;	
	;	
CODE_0080A3:	BRA $FA    	;[$809F]     
	;	
	;	
CODE_018254:	SEP #$20   	;            
CODE_018256:	LDX #$00F0 	;            
CODE_018259:	STX $4207  	;[$00:4207]  
CODE_01825C:	LDA #$30   	;            
CODE_01825E:	ORA $00    	;[$00:0000]  
CODE_018260:	STA $00    	;[$00:0000]  
CODE_018262:	STA $4200  	;[$00:4200]  
CODE_018265:	LDA #$0F   	;            
CODE_018267:	STA $2100  	;[$00:2100]  
CODE_01826A:	REP #$20   	;            
CODE_01826C:	LDA $17    	;[$00:0017]  
CODE_01826E:	SEP #$21   	;            
CODE_018270:	STA $211F  	;[$00:211F]  
CODE_018273:	SBC #$80   	;            
CODE_018275:	XBA        	;            
CODE_018276:	STA $211F  	;[$00:211F]  
CODE_018279:	SBC #$00   	;            
CODE_01827B:	XBA        	;            
CODE_01827C:	STA $210D  	;[$00:210D]  
CODE_01827F:	XBA        	;            
CODE_018280:	STA $210D  	;[$00:210D]  
CODE_018283:	SEC        	;            
CODE_018284:	LDA $19    	;[$00:0019]  
CODE_018286:	STA $2120  	;[$00:2120]  
CODE_018289:	SBC $15    	;[$00:0015]  
CODE_01828B:	XBA        	;            
CODE_01828C:	LDA $1A    	;[$00:001A]  
CODE_01828E:	STA $2120  	;[$00:2120]  
CODE_018291:	SBC $16    	;[$00:0016]  
CODE_018293:	XBA        	;            
CODE_018294:	STA $210E  	;[$00:210E]  
CODE_018297:	XBA        	;            
CODE_018298:	STA $210E  	;[$00:210E]  
CODE_01829B:	LDX $1B    	;[$00:001B]  
CODE_01829D:	STX $4209  	;[$00:4209]  
CODE_0182A0:	LDA $13    	;[$00:0013]  
CODE_0182A2:	STA $212C  	;[$00:212C]  
CODE_0182A5:	PEA $00BF  	;            
CODE_0182A8:	PLB        	;            
CODE_0182A9:	LDA #$0A   	;            
CODE_0182AB:	STA $8000  	;[$BF:8000]  
CODE_0182AE:	REP #$35   	;            
CODE_0182B0:	LDA #$0001 	;            
CODE_0182B3:	SBC $15    	;[$00:0015]  
CODE_0182B5:	STA $8000  	;[$BF:8000]  
CODE_0182B8:	LDX #$0265 	;            
CODE_0182BB:	STX $1D    	;[$00:001D]  
CODE_0182BD:	SEP #$20   	;            
CODE_0182BF:	BIT $C000  	;[$BF:C000]  
CODE_0182C2:	BPL $FB    	;[$82BF]     
CODE_0182C4:	REP #$20   	;            
CODE_0182C6:	LDY $8000  	;[$BF:8000]  
CODE_0182C9:	LDX $8000  	;[$BF:8000]  
CODE_0182CC:	PHX        	;            
CODE_0182CD:	LDA $8000  	;[$BF:8000]  
CODE_0182D0:	LDX $8000  	;[$BF:8000]  
CODE_0182D3:	PHX        	;            
CODE_0182D4:	LDX $1D    	;[$00:001D]  
CODE_0182D6:	STA $0380,x	;[$BF:05E5]  
CODE_0182D9:	PLA        	;            
CODE_0182DA:	STA $0382,x	;[$BF:05E7]  
CODE_0182DD:	STY $00,x  	;[$00:0265]  
CODE_0182DF:	PLY        	;            
CODE_0182E0:	STY $02,x  	;[$00:0267]  
CODE_0182E2:	INX        	;            
CODE_0182E3:	INX        	;            
CODE_0182E4:	INX        	;            
CODE_0182E5:	INX        	;            
CODE_0182E6:	CPX #$05E5 	;            
CODE_0182E9:	BNE $D0    	;[$82BB]     


IRQ:
CODE_0080B5:	PHB        	;            
CODE_0080B6:	PHK        	;            
CODE_0080B7:	PLB        	;            
CODE_0080B8:	SEP #$20   	;            
CODE_0080BA:	PHA        	;            
CODE_0080BB:	LDA $14    	;[$00:0014]  
CODE_0080BD:	STA $212C  	;[$00:212C]  
CODE_0080C0:	LDA $4211  	;[$00:4211]  
CODE_0080C3:	PLA        	;            
CODE_0080C4:	PLB        	;            
CODE_0080C5:	RTI        	;            
CODE_0182EB:	EOR #$8000 	;            
CODE_0182EE:	BIT $C000  	;[$BF:C000]  
CODE_0182F1:	BPL $FB    	;[$82EE]     
CODE_0182F3:	LDX $8000  	;[$BF:8000]  
CODE_0182F6:	LDX $8000  	;[$BF:8000]  
CODE_0182F9:	LDX $8000  	;[$BF:8000]  
CODE_0182FC:	STA $8000  	;[$BF:8000]  
CODE_0182FF:	PLB        	;            
CODE_018300:	JSL $018467	;[$01:8467]  
	;	
	;	
CODE_018098:	LDA $4218  	;[$00:4218]  
CODE_01809B:	BIT #$1000 	;            
CODE_01809E:	BNE $D5    	;[$8075]     
CODE_0180A0:	LDA $04    	;[$00:0004]  
CODE_0180A2:	SEP #$21   	;            
CODE_0180A4:	LDA $4218  	;[$00:4218]  
CODE_0180A7:	AND #$30   	;            
CODE_0180A9:	BEQ $14    	;[$80BF]     
CODE_0180BF:	REP #$30   	;            
CODE_0180C1:	LDA $4218  	;[$00:4218]  
CODE_0180C4:	AND #$0300 	;            
CODE_0180C7:	XBA        	;            
CODE_0180C8:	ASL A      	;            
CODE_0180C9:	TAX        	;            
CODE_0180CA:	LDA $80A5,x	;[$00:80A5]  
CODE_0180CD:	BIT $05    	;[$00:0005]  
CODE_0180CF:	BVC $04    	;[$80D5]     
CODE_0180D1:	EOR #$FFFF 	;            
CODE_0180D4:	INC A      	;            
CODE_0180D5:	ADC $0D    	;[$00:000D]  
CODE_0180D7:	STA $0D    	;[$00:000D]  
CODE_0180D9:	LDA $4218  	;[$00:4218]  
CODE_0180DC:	AND #$0C00 	;            
CODE_0180DF:	XBA        	;            
CODE_0180E0:	LSR A      	;            
CODE_0180E1:	TAX        	;            
CODE_0180E2:	LDA $80A5,x	;[$00:80A5]  
CODE_0180E5:	ADC $0F    	;[$00:000F]  
CODE_0180E7:	STA $0F    	;[$00:000F]  
CODE_0180E9:	SEP #$30   	;            
CODE_0180EB:	LDA $4218  	;[$00:4218]  
CODE_0180EE:	ASL A      	;            
CODE_0180EF:	AND #$80   	;            
CODE_0180F1:	ADC #$3F   	;            
CODE_0180F3:	ORA $4219  	;[$00:4219]  
CODE_0180F6:	ROL A      	;            
CODE_0180F7:	ROL A      	;            
CODE_0180F8:	ROL A      	;            
CODE_0180F9:	ROL A      	;            
CODE_0180FA:	AND #$06   	;            
CODE_0180FC:	TAX        	;            
CODE_0180FD:	PEA $00BF  	;            
CODE_018100:	PLB        	;            
CODE_018101:	LDA #$01   	;            
CODE_018103:	STA $8000  	;[$BF:8000]  
CODE_018106:	REP #$21   	;            
CODE_018108:	LDA #$7FFF 	;            
CODE_01810B:	STA $8000  	;[$BF:8000]  
CODE_01810E:	LDA $0D    	;[$00:000D]  
CODE_018110:	STA $8000  	;[$BF:8000]  
CODE_018113:	LDA #$C000 	;            
CODE_018116:	ADC $0F    	;[$00:000F]  
CODE_018118:	STA $8000  	;[$BF:8000]  
CODE_01811B:	STZ $8000  	;[$BF:8000]  
CODE_01811E:	SEP #$21   	;            
CODE_018120:	BIT $C000  	;[$BF:C000]  
CODE_018123:	BPL $FB    	;[$8120]     
CODE_018125:	LDA #$03   	;            
CODE_018127:	STA $8000  	;[$BF:8000]  
CODE_01812A:	REP #$30               
CODE_01812C:	LDA $0080AD,x	;[$00:80AD]
CODE_018130:	STA $8000  	;[$BF:8000]  
CODE_018133:	STZ $8000  	;[$BF:8000]  
CODE_018136:	STZ $8000  	;[$BF:8000]  
CODE_018139:	LDA $09    	;[$00:0009]  
CODE_01813B:	SBC $8000  	;[$BF:8000]  
CODE_01813E:	STA $09    	;[$00:0009]  
CODE_018140:	SEC        	;            
CODE_018141:	LDA $07    	;[$00:0007]  
CODE_018143:	SBC $8000  	;[$BF:8000]  
CODE_018146:	STA $07    	;[$00:0007]  
CODE_018148:	CLC        	;            
CODE_018149:	LDA $8000  	;[$BF:8000]  
CODE_01814C:	PLB        	;            
CODE_01814D:	ADC $0B    	;[$00:000B]  
CODE_01814F:	BMI $06    	;[$8157]     
CODE_018157:	EOR #$FFFF 	;            
CODE_01815A:	INC A      	;            
CODE_01815B:	STA $0B    	;[$00:000B]  
CODE_01815D:	SEC        	;            
CODE_01815E:	LDA #$0400 	;            
CODE_018161:	SBC $09    	;[$00:0009]  
CODE_018163:	STA $09    	;[$00:0009]  
CODE_018165:	LDA $0F    	;[$00:000F]  
CODE_018167:	EOR #$8000 	;            
CODE_01816A:	STA $0F    	;[$00:000F]  
CODE_01816C:	SEC        	;            
CODE_01816D:	LDA #$0000 	;            
CODE_018170:	SBC $0D    	;[$00:000D]  
CODE_018172:	STA $0D    	;[$00:000D]  
CODE_018174:	SEP #$20   	;            
CODE_018176:	LDA #$C0   	;            
CODE_018178:	EOR $06    	;[$00:0006]  
CODE_01817A:	STA $06    	;[$00:0006]  
CODE_01817C:	ASL A      	;            
CODE_01817D:	JSL $0389F5	;[$03:89F5]  
	;	
	;	
CODE_0389F5:	LDX #$8975 	;            
CODE_0389F8:	BCC $03    	;[$89FD]     
CODE_0389FD:	STX $02    	;[$00:0002]  
CODE_0389FF:	LDX #$0200 	;            
CODE_038A02:	JSL $0184B1	;[$01:84B1]  
	;	
	;	
CODE_018181:	REP #$20   	;            
CODE_018183:	JML $018094	;[$01:8094]  
	;	
	;	
CODE_018212:	JML $01818E	;[$01:818E]  
CODE_0181FF:	XBA        	;            
CODE_018200:	BCS $08    	;[$820A]     
	;	
	;	
CODE_018426:	JML $0183D8	;[$01:83D8]  
	;	
	;	
CODE_0083C6:	LDA $0A,x  	;[$00:096F]  
CODE_0083C8:	STA $8000  	;[$BF:8000]  
CODE_0083CB:	LDA $0C,x  	;[$00:0971]  
CODE_0083CD:	STA $8000  	;[$BF:8000]  
CODE_0083D0:	LDA $0E,x  	;[$00:0973]  
CODE_0083D2:	BRA $17    	;[$83EB]     
;*** NMI

CODE_038A06:	LDA #$00   	;            
CODE_038A08:	STA $2115  	;[$00:2115]  
CODE_038A0B:	LDA #$00   	;            
CODE_038A0D:	STA $4300  	;[$00:4300]  
CODE_038A10:	LDA #$18   	;            
CODE_038A12:	STA $4301  	;[$00:4301]  
CODE_038A15:	LDX $02    	;[$00:0002]  
CODE_038A17:	LDA #$03   	;            
CODE_038A19:	STX $4302  	;[$00:4302]  
CODE_038A1C:	STA $4304  	;[$00:4304]  
CODE_038A1F:	LDA #$01   	;            
CODE_038A21:	LDX #$0019 	;            
CODE_038A24:	LDY #$1DB4 	;            
CODE_038A27:	STY $2116  	;[$00:2116]  
CODE_038A2A:	STX $4305  	;[$00:4305]  
CODE_038A2D:	STA $420B  	;[$00:420B]  
CODE_038A30:	LDY #$1E34 	;            
CODE_038A33:	STY $2116  	;[$00:2116]  
CODE_038A36:	STX $4305  	;[$00:4305]  
CODE_038A39:	STA $420B  	;[$00:420B]  
CODE_038A3C:	LDY #$1EB4 	;            
CODE_038A3F:	STY $2116  	;[$00:2116]  
CODE_038A42:	STX $4305  	;[$00:4305]  
CODE_038A45:	STA $420B  	;[$00:420B]  
CODE_038A48:	LDY #$1F34 	;            
CODE_038A4B:	STY $2116  	;[$00:2116]  
CODE_038A4E:	STX $4305  	;[$00:4305]  
CODE_038A51:	STA $420B  	;[$00:420B]  
CODE_038A54:	LDX #$000E 	;            
CODE_038A57:	LDY #$21B9 	;            
CODE_038A5A:	STY $2116  	;[$00:2116]  
CODE_038A5D:	STX $4305  	;[$00:4305]  
CODE_038A60:	STA $420B  	;[$00:420B]  
CODE_038A63:	LDY #$2239 	;            
CODE_038A66:	STY $2116  	;[$00:2116]  
CODE_038A69:	STX $4305  	;[$00:4305]  
CODE_038A6C:	STA $420B  	;[$00:420B]  
CODE_038A6F:	RTL        	;            
	
	
CODE_018304:	JML $01826C	;[$01:826C]  
	
	
CODE_018151:	STA $0B    	;[$00:000B]  
CODE_018153:	JML $018094	;[$01:8094]  

;org $80A5
;DATA_0080A5:
;db 00, 00, 00, 01, 00, FF, 00, 00, 00, 00, 10, 00, E0, FF, 30, 00

;Header
org $FFC0
db "DSP-1 DEMO           "
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

