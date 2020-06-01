/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QDBusUnixFileDescriptor

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD swap
   METHOD isValid
   METHOD fileDescriptor
   METHOD setFileDescriptor
   METHOD giveFileDescriptor
   METHOD takeFileDescriptor
   METHOD isSupported

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QDBusUnixFileDescriptor
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtDBus/QDBusUnixFileDescriptor>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtDBus/QDBusUnixFileDescriptor>
#endif

/*
QDBusUnixFileDescriptor()
*/
void QDBusUnixFileDescriptor_new1()
{
  auto obj = new QDBusUnixFileDescriptor();
  Qt5xHb::returnNewObject( obj, true );
}

/*
explicit QDBusUnixFileDescriptor(int fileDescriptor)
*/
void QDBusUnixFileDescriptor_new2()
{
  auto obj = new QDBusUnixFileDescriptor( PINT(1) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
QDBusUnixFileDescriptor(const QDBusUnixFileDescriptor &other)
*/
void QDBusUnixFileDescriptor_new3()
{
  auto obj = new QDBusUnixFileDescriptor( *PQDBUSUNIXFILEDESCRIPTOR(1) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
[1]QDBusUnixFileDescriptor()
[2]explicit QDBusUnixFileDescriptor(int fileDescriptor)
[3]QDBusUnixFileDescriptor(const QDBusUnixFileDescriptor &other)
*/

HB_FUNC( QDBUSUNIXFILEDESCRIPTOR_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDBusUnixFileDescriptor_new1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QDBusUnixFileDescriptor_new2();
  }
  else if( ISNUMPAR(1) && ISQDBUSUNIXFILEDESCRIPTOR(1) )
  {
    QDBusUnixFileDescriptor_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDBUSUNIXFILEDESCRIPTOR_DELETE )
{
  auto obj = (QDBusUnixFileDescriptor *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    delete obj;
    obj = nullptr;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( nullptr, nullptr );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void swap(QDBusUnixFileDescriptor &other)
*/
HB_FUNC_STATIC( QDBUSUNIXFILEDESCRIPTOR_SWAP )
{
  auto obj = (QDBusUnixFileDescriptor *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQDBUSUNIXFILEDESCRIPTOR(1) )
    {
#endif
      obj->swap( *PQDBUSUNIXFILEDESCRIPTOR(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isValid() const
*/
HB_FUNC_STATIC( QDBUSUNIXFILEDESCRIPTOR_ISVALID )
{
  auto obj = (QDBusUnixFileDescriptor *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isValid() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
int fileDescriptor() const
*/
HB_FUNC_STATIC( QDBUSUNIXFILEDESCRIPTOR_FILEDESCRIPTOR )
{
  auto obj = (QDBusUnixFileDescriptor *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->fileDescriptor() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setFileDescriptor(int fileDescriptor)
*/
HB_FUNC_STATIC( QDBUSUNIXFILEDESCRIPTOR_SETFILEDESCRIPTOR )
{
  auto obj = (QDBusUnixFileDescriptor *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setFileDescriptor( PINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void giveFileDescriptor(int fileDescriptor)
*/
HB_FUNC_STATIC( QDBUSUNIXFILEDESCRIPTOR_GIVEFILEDESCRIPTOR )
{
  auto obj = (QDBusUnixFileDescriptor *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->giveFileDescriptor( PINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int takeFileDescriptor()
*/
HB_FUNC_STATIC( QDBUSUNIXFILEDESCRIPTOR_TAKEFILEDESCRIPTOR )
{
  auto obj = (QDBusUnixFileDescriptor *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->takeFileDescriptor() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
static bool isSupported()
*/
HB_FUNC_STATIC( QDBUSUNIXFILEDESCRIPTOR_ISSUPPORTED )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    RBOOL( QDBusUnixFileDescriptor::isSupported() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

HB_FUNC_STATIC( QDBUSUNIXFILEDESCRIPTOR_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( nullptr, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( nullptr, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( nullptr, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( nullptr, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QDBUSUNIXFILEDESCRIPTOR_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QDBUSUNIXFILEDESCRIPTOR_NEWFROM );
}

HB_FUNC_STATIC( QDBUSUNIXFILEDESCRIPTOR_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QDBUSUNIXFILEDESCRIPTOR_NEWFROM );
}

HB_FUNC_STATIC( QDBUSUNIXFILEDESCRIPTOR_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QDBUSUNIXFILEDESCRIPTOR_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( nullptr, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
