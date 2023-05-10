
IMG_PNG = $(wildcard img/*.png)
IMG_SRC = $(IMG_PNG:.png=.h)

AUD_OGG = $(wildcard audio/*.ogg)
AUD_SRC = $(AUD_OGG:.ogg=.h)

MAP_BIN = maps
MAP_SRC = maps.h

MOD_BIN = models
MOD_SRC = models.h

all: $(IMG_SRC) $(AUD_SRC) $(MAP_SRC) $(MOD_SRC)

%.h: %.png
	xxd -i $< > $@

%.h: %.ogg
	xxd -i $< > $@

maps.h: maps
	xxd -i $< > $@

models.h: models
	xxd -i $< > $@
