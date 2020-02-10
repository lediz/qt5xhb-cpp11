/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QACTION
REQUEST QMAINWINDOW
REQUEST QMENU
REQUEST QTOOLBAR
REQUEST QWIDGET
#endif

CLASS QScriptEngineDebugger INHERIT QObject

   METHOD new
   METHOD delete
   METHOD action
   METHOD attachTo
   METHOD autoShowStandardWindow
   METHOD createStandardMenu
   METHOD createStandardToolBar
   METHOD detach
   METHOD setAutoShowStandardWindow
   METHOD standardWindow
   METHOD state
   METHOD widget

   METHOD onEvaluationResumed
   METHOD onEvaluationSuspended

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QScriptEngineDebugger
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtScriptTools/QScriptEngineDebugger>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals4.h"

#ifdef __XHARBOUR__
#include <QtScriptTools/QScriptEngineDebugger>
#endif

#include <QtWidgets/QAction>
#include <QtWidgets/QMenu>
#include <QtWidgets/QToolBar>
#include <QtWidgets/QMainWindow>

/*
QScriptEngineDebugger(QObject * parent = nullptr)
*/
HB_FUNC_STATIC( QSCRIPTENGINEDEBUGGER_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QScriptEngineDebugger * o = new QScriptEngineDebugger ( OPQOBJECT(1,nullptr) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSCRIPTENGINEDEBUGGER_DELETE )
{
  QScriptEngineDebugger * obj = (QScriptEngineDebugger *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    delete obj;
    obj = nullptr;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QAction * action(DebuggerAction action) const
*/
HB_FUNC_STATIC( QSCRIPTENGINEDEBUGGER_ACTION )
{
  QScriptEngineDebugger * obj = (QScriptEngineDebugger *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      QAction * ptr = obj->action ( (QScriptEngineDebugger::DebuggerAction) hb_parni(1) );
      _qt5xhb_createReturnQObjectClass ( ptr, "QACTION" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void attachTo(QScriptEngine * engine)
*/
HB_FUNC_STATIC( QSCRIPTENGINEDEBUGGER_ATTACHTO )
{
  QScriptEngineDebugger * obj = (QScriptEngineDebugger *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSCRIPTENGINE(1) )
    {
#endif
      obj->attachTo ( PQSCRIPTENGINE(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool autoShowStandardWindow() const
*/
HB_FUNC_STATIC( QSCRIPTENGINEDEBUGGER_AUTOSHOWSTANDARDWINDOW )
{
  QScriptEngineDebugger * obj = (QScriptEngineDebugger *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->autoShowStandardWindow () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QMenu * createStandardMenu(QWidget * parent = nullptr)
*/
HB_FUNC_STATIC( QSCRIPTENGINEDEBUGGER_CREATESTANDARDMENU )
{
  QScriptEngineDebugger * obj = (QScriptEngineDebugger *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
    {
#endif
      QMenu * ptr = obj->createStandardMenu ( OPQWIDGET(1,nullptr) );
      _qt5xhb_createReturnQWidgetClass ( ptr, "QMENU" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QToolBar * createStandardToolBar(QWidget * parent = nullptr)
*/
HB_FUNC_STATIC( QSCRIPTENGINEDEBUGGER_CREATESTANDARDTOOLBAR )
{
  QScriptEngineDebugger * obj = (QScriptEngineDebugger *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
    {
#endif
      QToolBar * ptr = obj->createStandardToolBar ( OPQWIDGET(1,nullptr) );
      _qt5xhb_createReturnQWidgetClass ( ptr, "QTOOLBAR" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void detach()
*/
HB_FUNC_STATIC( QSCRIPTENGINEDEBUGGER_DETACH )
{
  QScriptEngineDebugger * obj = (QScriptEngineDebugger *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->detach ();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setAutoShowStandardWindow(bool autoShow)
*/
HB_FUNC_STATIC( QSCRIPTENGINEDEBUGGER_SETAUTOSHOWSTANDARDWINDOW )
{
  QScriptEngineDebugger * obj = (QScriptEngineDebugger *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setAutoShowStandardWindow ( PBOOL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QMainWindow * standardWindow() const
*/
HB_FUNC_STATIC( QSCRIPTENGINEDEBUGGER_STANDARDWINDOW )
{
  QScriptEngineDebugger * obj = (QScriptEngineDebugger *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QMainWindow * ptr = obj->standardWindow ();
      _qt5xhb_createReturnQWidgetClass ( ptr, "QMAINWINDOW" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
DebuggerState state() const
*/
HB_FUNC_STATIC( QSCRIPTENGINEDEBUGGER_STATE )
{
  QScriptEngineDebugger * obj = (QScriptEngineDebugger *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->state () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QWidget * widget(DebuggerWidget widget) const
*/
HB_FUNC_STATIC( QSCRIPTENGINEDEBUGGER_WIDGET )
{
  QScriptEngineDebugger * obj = (QScriptEngineDebugger *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      QWidget * ptr = obj->widget ( (QScriptEngineDebugger::DebuggerWidget) hb_parni(1) );
      _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void evaluationResumed()
*/
HB_FUNC_STATIC( QSCRIPTENGINEDEBUGGER_ONEVALUATIONRESUMED )
{
  QScriptEngineDebugger * sender = (QScriptEngineDebugger *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("evaluationResumed()");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QScriptEngineDebugger::evaluationResumed, 
                                                              [sender, indexOfCodeBlock]
                                                              () {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject ( (QObject *) sender, "QSCRIPTENGINEDEBUGGER" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 1, pSender );
            hb_itemRelease( pSender );
          }

        });

        Signals4_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals4_disconnection( sender, indexOfSignal );

      QObject::disconnect( Signals4_get_connection( sender, indexOfSignal ) );

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else
  {
    hb_retl( false );
  }
}

/*
void evaluationSuspended()
*/
HB_FUNC_STATIC( QSCRIPTENGINEDEBUGGER_ONEVALUATIONSUSPENDED )
{
  QScriptEngineDebugger * sender = (QScriptEngineDebugger *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("evaluationSuspended()");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QScriptEngineDebugger::evaluationSuspended, 
                                                              [sender, indexOfCodeBlock]
                                                              () {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject ( (QObject *) sender, "QSCRIPTENGINEDEBUGGER" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 1, pSender );
            hb_itemRelease( pSender );
          }

        });

        Signals4_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals4_disconnection( sender, indexOfSignal );

      QObject::disconnect( Signals4_get_connection( sender, indexOfSignal ) );

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else
  {
    hb_retl( false );
  }
}

#pragma ENDDUMP
