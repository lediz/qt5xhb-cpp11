/*

  Qt5xHb/C++11 Project - Test Program

  Copyright (C) 2020 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/marcosgambeta/qt5xhb-cpp11

*/

#include "qt5xhb.ch"

PROCEDURE Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oLabel

   oApp := QApplication():new()

   oWindow := QWidget():new():setWindowTitle("Test"):resize(640,480)

   oLabel := QLabel():new("QLabel",oWindow):move(20,20):setFont(QFont():new("Arial Bold",48))

   oLabel:setGraphicsEffect(QGraphicsDropShadowEffect():new())

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN
