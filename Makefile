
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

BLD_CHK = $(wildcard blend/*.blend)
BLD_GLB = $(BLD_CHK:.blend=.gltf)
BLD_MAP = $(BLD_GLB:.gltf=.map)
BLD_SRC = $(BLD_MAP:.map=.h)

all: $(IMG_SRC) $(AUD_SRC) $(MAP_SRC) $(MOD_SRC) $(TTF_SRC) $(BLD_MAP) $(BLD_SRC)

%.h: %.png
	xxd -i $< | sed 's|unsigned int|const unsigned int|g' > $@

%.h: %.ogg
	xxd -i $< | sed 's|unsigned int|const unsigned int|g' > $@

%.h: %.ttf
	xxd -i $< | sed 's|unsigned int|const unsigned int|g' > $@

maps.h: maps
	xxd -i $< | sed 's|unsigned int|const unsigned int|g' > $@

models.h: models
	xxd -i $< | sed 's|unsigned int|const unsigned int|g' > $@

%.gltf: %.blend
	echo "E: $< is newer than $@"
	exit 1

%.map: %.gltf
	../tools/mapc $< > $@

%.h: %.map
	xxd -i $< | sed 's|unsigned int|const unsigned int|g' > $@
