/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QEXTENSIONMANAGER
REQUEST QOBJECT
#endif

CLASS QExtensionFactory INHERIT QObject,QAbstractExtensionFactory

   METHOD new
   METHOD delete
   METHOD extensionManager
   METHOD extension

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QExtensionFactory
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtDesigner/QExtensionFactory>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtDesigner/QExtensionFactory>
#endif

#include <QtDesigner/QExtensionManager>

/*
QExtensionFactory ( QExtensionManager * parent = nullptr )
*/
HB_FUNC_STATIC( QEXTENSIONFACTORY_NEW )
{
  if( ISBETWEEN(0,1) && (ISQEXTENSIONMANAGER(1)||ISNIL(1)) )
  {
    auto obj = new QExtensionFactory( OPQEXTENSIONMANAGER(1,nullptr) );
    Qt5xHb::returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QEXTENSIONFACTORY_DELETE )
{
  auto obj = (QExtensionFactory *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    Qt5xHb::Events_disconnect_all_events( obj, true );
    Signals_disconnect_all_signals( obj, true );
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
QExtensionManager * extensionManager () const
*/
HB_FUNC_STATIC( QEXTENSIONFACTORY_EXTENSIONMANAGER )
{
  auto obj = (QExtensionFactory *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QExtensionManager * ptr = obj->extensionManager();
      Qt5xHb::createReturnQObjectClass( ptr, "QEXTENSIONMANAGER" );
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
virtual QObject * extension ( QObject * object, const QString & iid ) const
*/
HB_FUNC_STATIC( QEXTENSIONFACTORY_EXTENSION )
{
  auto obj = (QExtensionFactory *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQOBJECT(1) && ISCHAR(2) )
    {
#endif
      QObject * ptr = obj->extension( PQOBJECT(1), PQSTRING(2) );
      Qt5xHb::createReturnQObjectClass( ptr, "QOBJECT" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

#pragma ENDDUMP
