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

CLASS QCameraInfo

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isNull
   METHOD deviceName
   METHOD description
   METHOD position
   METHOD orientation
   METHOD defaultCamera
   METHOD availableCameras

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QCameraInfo
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
#include <QtMultimedia/QCameraInfo>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals4.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
#include <QtMultimedia/QCameraInfo>
#endif
#endif

/*
explicit QCameraInfo(const QByteArray &name = QByteArray())
*/
void QCameraInfo_new1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QCameraInfo * o = new QCameraInfo ( ISNIL(1)? QByteArray() : *(QByteArray *) _qt5xhb_itemGetPtr(1) );
  _qt5xhb_returnNewObject( o, true );
#endif
}

/*
explicit QCameraInfo(const QCamera &camera)
*/
void QCameraInfo_new2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QCameraInfo * o = new QCameraInfo ( *PQCAMERA(1) );
  _qt5xhb_returnNewObject( o, true );
#endif
}

/*
QCameraInfo(const QCameraInfo& other)
*/
void QCameraInfo_new3 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QCameraInfo * o = new QCameraInfo ( *PQCAMERAINFO(1) );
  _qt5xhb_returnNewObject( o, true );
#endif
}

//[1]explicit QCameraInfo(const QByteArray &name = QByteArray())
//[2]explicit QCameraInfo(const QCamera &camera)
//[3]QCameraInfo(const QCameraInfo& other)

HB_FUNC_STATIC( QCAMERAINFO_NEW )
{
  if( ISBETWEEN(0,1) && ISQBYTEARRAY(1) )
  {
    QCameraInfo_new1();
  }
  else if( ISNUMPAR(1) && ISQCAMERA(1) )
  {
    QCameraInfo_new2();
  }
  else if( ISNUMPAR(1) && ISQCAMERAINFO(1) )
  {
    QCameraInfo_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
~QCameraInfo()
*/
HB_FUNC_STATIC( QCAMERAINFO_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QCameraInfo * obj = (QCameraInfo *) _qt5xhb_itemGetPtrStackSelfItem();

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
bool isNull() const
*/
HB_FUNC_STATIC( QCAMERAINFO_ISNULL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QCameraInfo * obj = (QCameraInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isNull () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
QString deviceName() const
*/
HB_FUNC_STATIC( QCAMERAINFO_DEVICENAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QCameraInfo * obj = (QCameraInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->deviceName () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
QString description() const
*/
HB_FUNC_STATIC( QCAMERAINFO_DESCRIPTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QCameraInfo * obj = (QCameraInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->description () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
QCamera::Position position() const
*/
HB_FUNC_STATIC( QCAMERAINFO_POSITION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QCameraInfo * obj = (QCameraInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->position () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
int orientation() const
*/
HB_FUNC_STATIC( QCAMERAINFO_ORIENTATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QCameraInfo * obj = (QCameraInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->orientation () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
static QCameraInfo defaultCamera()
*/
HB_FUNC_STATIC( QCAMERAINFO_DEFAULTCAMERA )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
  {
#endif
      QCameraInfo * ptr = new QCameraInfo( QCameraInfo::defaultCamera () );
      _qt5xhb_createReturnClass ( ptr, "QCAMERAINFO", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
#endif
}

/*
static QList<QCameraInfo> availableCameras(QCamera::Position position = QCamera::UnspecifiedPosition)
*/
HB_FUNC_STATIC( QCAMERAINFO_AVAILABLECAMERAS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && ISOPTNUM(1) )
  {
#endif
      QList<QCameraInfo> list = QCameraInfo::availableCameras ( ISNIL(1)? (QCamera::Position) QCamera::UnspecifiedPosition : (QCamera::Position) hb_parni(1) );
      PHB_DYNS pDynSym = hb_dynsymFindName( "QCAMERAINFO" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      int i;
      for(i=0;i<list.count();i++)
      {
        if( pDynSym )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QCameraInfo *) new QCameraInfo ( list[i] ) );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          PHB_ITEM pDestroy = hb_itemNew( NULL );
          hb_itemPutL( pDestroy, true );
          hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
          hb_itemRelease( pDestroy );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
        else
        {
          hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QCAMERAINFO", HB_ERR_ARGS_BASEPARAMS );
        }
      }
      hb_itemReturnRelease(pArray);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
#endif
}

#pragma ENDDUMP
