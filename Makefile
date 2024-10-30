FG_SCENERY=${HOME}/.local/share/scenery/local-scenery-mods

TARGET_DIR=Objects/w080n40/w076n44/

FILES=ogdensburg-prescott-bridge.ac

install: ${FILES}
	cp ${FILES} ${FG_SCENERY}/${TARGET_DIR}

view: install
	fgfs --aircraft=ufo --lat=44.7353 --lon=-75.4695 --altitude=500 --heading=90 --altitude=700

