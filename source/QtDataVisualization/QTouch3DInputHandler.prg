/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QTouch3DInputHandler INHERIT Q3DInputHandler

   METHOD new
   METHOD delete
   METHOD touchEvent

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTouch3DInputHandler
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QtDataVisualization/QTouch3DInputHandler>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals3.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QtDataVisualization/QTouch3DInputHandler>
#endif
#endif

using namespace QtDataVisualization;

/*
explicit QTouch3DInputHandler(QObject *parent = nullptr)
*/
HB_FUNC_STATIC( QTOUCH3DINPUTHANDLER_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QTouch3DInputHandler * o = new QTouch3DInputHandler ( OPQOBJECT(1,nullptr) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
virtual ~QTouch3DInputHandler()
*/
HB_FUNC_STATIC( QTOUCH3DINPUTHANDLER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QTouch3DInputHandler * obj = (QTouch3DInputHandler *) _qt5xhb_itemGetPtrStackSelfItem();

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
#endif
}

/*
virtual void touchEvent(QTouchEvent *event)
*/
HB_FUNC_STATIC( QTOUCH3DINPUTHANDLER_TOUCHEVENT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QTouch3DInputHandler * obj = (QTouch3DInputHandler *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQTOUCHEVENT(1) )
    {
#endif
      obj->touchEvent ( PQTOUCHEVENT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

#pragma ENDDUMP
