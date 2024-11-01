FG_SCENERY=${HOME}/Dropbox/FlightGear/local-scenery-mods

TARGET_DIR=Objects/w080n40/w076n44/

FILES=ogdensburg-prescott-bridge.ac \
  ogdensburg-prescott-bridge.xml \
  ogdensburg-prescott-bridge1.png \
  ogdensburg-prescott-bridge2.png

install: ${FILES}
	cp ${FILES} ${FG_SCENERY}/${TARGET_DIR}

view: install
	fgfs --timeofday=noon --aircraft=ufo --lat=44.7353 --lon=-75.4695 --altitude=500 --heading=90 --altitude=700

view-dusk: install
	fgfs --timeofday=dusk --aircraft=ufo --lat=44.7353 --lon=-75.4695 --altitude=500 --heading=90 --altitude=700

view-night: install
	fgfs --timeofday=midnight --aircraft=ufo --lat=44.7353 --lon=-75.4695 --altitude=500 --heading=90 --altitude=700

drive: install
	fgfs --timeofday=noon --aircraft=jeep --lat=44.7437 --lon=-75.46658 --heading=125
