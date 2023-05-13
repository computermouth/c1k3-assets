
IMG_PNG = $(wildcard img/*.png)
IMG_SRC = $(IMG_PNG:.png=.h)

AUD_OGG = $(wildcard audio/*.ogg)
AUD_SRC = $(AUD_OGG:.ogg=.h)

MAP_BIN = maps
MAP_SRC = maps.h

MOD_BIN = models
MOD_SRC = models.h

TTF_BIN = $(wildcard ttf/*.ttf)
TTF_SRC = $(TTF_BIN:.ttf=.h)

all: $(IMG_SRC) $(AUD_SRC) $(MAP_SRC) $(MOD_SRC) $(TTF_SRC)

%.h: %.png
	xxd -i $< > $@
	sed -i 's|unsigned int|const unsigned int|g' $@

%.h: %.ogg
	xxd -i $< > $@
	sed -i 's|unsigned int|const unsigned int|g' $@

%.h: %.ttf
	xxd -i $< > $@
	sed -i 's|unsigned int|const unsigned int|g' $@

maps.h: maps
	xxd -i $< > $@
	sed -i 's|unsigned int|const unsigned int|g' $@

models.h: models
	xxd -i $< > $@
	sed -i 's|unsigned int|const unsigned int|g' $@
