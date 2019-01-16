/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QOpenGLDebugMessage

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD swap
   METHOD source
   METHOD type
   METHOD severity
   METHOD id
   METHOD message
   METHOD createApplicationMessage
   METHOD createThirdPartyMessage

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QOpenGLDebugMessage
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QOpenGLDebugMessage>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals2.h"

#ifdef __XHARBOUR__
#include <QOpenGLDebugMessage>
#endif

/*
QOpenGLDebugMessage()
*/
void QOpenGLDebugMessage_new1 ()
{
  QOpenGLDebugMessage * o = new QOpenGLDebugMessage ();
  _qt5xhb_returnNewObject( o, true );
}

/*
QOpenGLDebugMessage(const QOpenGLDebugMessage &debugMessage)
*/
void QOpenGLDebugMessage_new2 ()
{
  QOpenGLDebugMessage * o = new QOpenGLDebugMessage ( *PQOPENGLDEBUGMESSAGE(1) );
  _qt5xhb_returnNewObject( o, true );
}

//[1]QOpenGLDebugMessage()
//[2]QOpenGLDebugMessage(const QOpenGLDebugMessage &debugMessage)

HB_FUNC_STATIC( QOPENGLDEBUGMESSAGE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QOpenGLDebugMessage_new1();
  }
  else if( ISNUMPAR(1) && ISQOPENGLDEBUGMESSAGE(1) )
  {
    QOpenGLDebugMessage_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QOPENGLDEBUGMESSAGE_DELETE )
{
  QOpenGLDebugMessage * obj = (QOpenGLDebugMessage *) _qt5xhb_itemGetPtrStackSelfItem();

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
void swap(QOpenGLDebugMessage &debugMessage)
*/
HB_FUNC_STATIC( QOPENGLDEBUGMESSAGE_SWAP )
{
  QOpenGLDebugMessage * obj = (QOpenGLDebugMessage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQOPENGLDEBUGMESSAGE(1) )
    {
#endif
      obj->swap ( *PQOPENGLDEBUGMESSAGE(1) );
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
Source source() const
*/
HB_FUNC_STATIC( QOPENGLDEBUGMESSAGE_SOURCE )
{
  QOpenGLDebugMessage * obj = (QOpenGLDebugMessage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->source () );
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
Type type() const
*/
HB_FUNC_STATIC( QOPENGLDEBUGMESSAGE_TYPE )
{
  QOpenGLDebugMessage * obj = (QOpenGLDebugMessage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->type () );
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
Severity severity() const
*/
HB_FUNC_STATIC( QOPENGLDEBUGMESSAGE_SEVERITY )
{
  QOpenGLDebugMessage * obj = (QOpenGLDebugMessage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->severity () );
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
GLuint id() const
*/
HB_FUNC_STATIC( QOPENGLDEBUGMESSAGE_ID )
{
  QOpenGLDebugMessage * obj = (QOpenGLDebugMessage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RGLUINT( obj->id () );
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
QString message() const
*/
HB_FUNC_STATIC( QOPENGLDEBUGMESSAGE_MESSAGE )
{
  QOpenGLDebugMessage * obj = (QOpenGLDebugMessage *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->message () );
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
static QOpenGLDebugMessage createApplicationMessage(const QString &text,GLuint id = 0,Severity severity = NotificationSeverity,Type type = OtherType)
*/
HB_FUNC_STATIC( QOPENGLDEBUGMESSAGE_CREATEAPPLICATIONMESSAGE )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,4) && ISCHAR(1) && ISOPTNUM(2) && ISOPTNUM(3) && ISOPTNUM(4) )
  {
#endif
      QOpenGLDebugMessage * ptr = new QOpenGLDebugMessage( QOpenGLDebugMessage::createApplicationMessage ( PQSTRING(1), OPGLUINT(2,0), ISNIL(3)? (QOpenGLDebugMessage::Severity) QOpenGLDebugMessage::NotificationSeverity : (QOpenGLDebugMessage::Severity) hb_parni(3), ISNIL(4)? (QOpenGLDebugMessage::Type) QOpenGLDebugMessage::OtherType : (QOpenGLDebugMessage::Type) hb_parni(4) ) );
      _qt5xhb_createReturnClass ( ptr, "QOPENGLDEBUGMESSAGE", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QOpenGLDebugMessage createThirdPartyMessage(const QString &text,GLuint id = 0,Severity severity = NotificationSeverity,Type type = OtherType)
*/
HB_FUNC_STATIC( QOPENGLDEBUGMESSAGE_CREATETHIRDPARTYMESSAGE )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,4) && ISCHAR(1) && ISOPTNUM(2) && ISOPTNUM(3) && ISOPTNUM(4) )
  {
#endif
      QOpenGLDebugMessage * ptr = new QOpenGLDebugMessage( QOpenGLDebugMessage::createThirdPartyMessage ( PQSTRING(1), OPGLUINT(2,0), ISNIL(3)? (QOpenGLDebugMessage::Severity) QOpenGLDebugMessage::NotificationSeverity : (QOpenGLDebugMessage::Severity) hb_parni(3), ISNIL(4)? (QOpenGLDebugMessage::Type) QOpenGLDebugMessage::OtherType : (QOpenGLDebugMessage::Type) hb_parni(4) ) );
      _qt5xhb_createReturnClass ( ptr, "QOPENGLDEBUGMESSAGE", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

HB_FUNC_STATIC( QOPENGLDEBUGMESSAGE_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QOPENGLDEBUGMESSAGE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QOPENGLDEBUGMESSAGE_NEWFROM );
}

HB_FUNC_STATIC( QOPENGLDEBUGMESSAGE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QOPENGLDEBUGMESSAGE_NEWFROM );
}

HB_FUNC_STATIC( QOPENGLDEBUGMESSAGE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QOPENGLDEBUGMESSAGE_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
