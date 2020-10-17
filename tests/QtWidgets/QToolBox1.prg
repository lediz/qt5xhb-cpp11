/*

  Qt5xHb/C++11 Project - Test Program

  Copyright (C) 2020 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/marcosgambeta/qt5xhb-cpp11

*/

#include "qt5xhb.ch"

#ifdef __XHARBOUR__
REQUEST HB_GT_WIN
#endif

PROCEDURE Main()

   LOCAL oApp
   LOCAL oToolBox

   oApp := QApplication():new()

   oToolBox := QToolBox():new()

   oToolBox:addItem(QWidget():new(), QIcon():new("../images/cut.png"), "Item 1")
   oToolBox:addItem(QWidget():new(), QIcon():new("../images/copy.png"), "Item 2")
   oToolBox:addItem(QWidget():new(), QIcon():new("../images/paste.png"), "Item 3")
   
   oToolBox:onCurrentChanged({|oSender,nItem|qout(nItem)})

   oToolBox:show()

   oApp:exec()

   oToolBox:delete()

   oApp:delete()

RETURN
