#
# Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
#
# Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

$(QT5XHB_OBJ_DIR)/HUiLoaderMoc.cpp : $(QT5XHB_SRC_DIR)/QtUiTools/HUiLoader.h
	$(MOC) $(MOCFLAGS) $(MOCINCLUDES) $^ -o $@
