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
   LOCAL oWindow
   LOCAL oDesktopWidget

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle("Teste")
   oWindow:resize(640,480)
   oWindow:show()

   oDesktopWidget := QApplication():desktop()
   
   ? "isVirtualDesktop = "
   ?? oDesktopWidget:isVirtualDesktop()

   ? "primaryScreen = "
   ?? oDesktopWidget:primaryScreen()

   ? "screenCount = "
   ?? oDesktopWidget:screenCount()

   ? "screenNumber = "
   ?? oDesktopWidget:screenNumber(oWindow)

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN
