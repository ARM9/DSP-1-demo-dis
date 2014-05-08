export PATH			:=	$(PATH):$(DEVKITSNES)/asar/
export EMULATORS	:=	$(DEVKITPRO)/emulators/snes

AS		:=	asar

snes9x	:= $(EMULATORS)/snes9x/snes9x-x64

OUTPUT	:=	$(CURDIR)/dsp1.sfc
#----------------------------------------------------------
.PHONY: all clean run

all:
	$(AS) dsp1.s

clean:
	-rm $(OUTPUT)

run: all
	$(snes9x) $(OUTPUT)

