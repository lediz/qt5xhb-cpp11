/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
REQUEST QNETWORKACCESSMANAGER
REQUEST QNETWORKREQUEST
REQUEST QSSLCONFIGURATION
REQUEST QURL
REQUEST QVARIANT
#endif

CLASS QNetworkReply INHERIT QIODevice

   METHOD delete
   METHOD close
   METHOD isSequential
   METHOD readBufferSize
   METHOD setReadBufferSize
   METHOD manager
   METHOD operation
   METHOD request
   METHOD error
   METHOD isFinished
   METHOD isRunning
   METHOD url
   METHOD header
   METHOD hasRawHeader
   METHOD rawHeaderList
   METHOD rawHeader
   METHOD attribute
   METHOD sslConfiguration
   METHOD setSslConfiguration
   METHOD abort
   METHOD ignoreSslErrors

   METHOD onDownloadProgress
   METHOD onError
   METHOD onFinished
   METHOD onMetaDataChanged
   METHOD onUploadProgress
   METHOD onEncrypted
   METHOD onSslErrors
   METHOD onPreSharedKeyAuthenticationRequired
   METHOD onRedirected
   METHOD onRedirectAllowed

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QNetworkReply
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtNetwork/QNetworkReply>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals4.h"

#ifdef __XHARBOUR__
#include <QtNetwork/QNetworkReply>
#endif

#include <QtNetwork/QSslConfiguration>

/*
explicit QNetworkReply(QObject *parent = nullptr) [protected]
*/

/*
QNetworkReply(QNetworkReplyPrivate &dd, QObject *parent) [protected]
*/

/*
~QNetworkReply()
*/
HB_FUNC_STATIC( QNETWORKREPLY_DELETE )
{
  QNetworkReply * obj = (QNetworkReply *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    Events_disconnect_all_events (obj, true);
    Signals4_disconnect_all_signals (obj, true);
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
virtual void close() Q_DECL_OVERRIDE
*/
HB_FUNC_STATIC( QNETWORKREPLY_CLOSE )
{
  QNetworkReply * obj = (QNetworkReply *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->close ();
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
virtual bool isSequential() const Q_DECL_OVERRIDE
*/
HB_FUNC_STATIC( QNETWORKREPLY_ISSEQUENTIAL )
{
  QNetworkReply * obj = (QNetworkReply *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isSequential () );
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
qint64 readBufferSize () const
*/
HB_FUNC_STATIC( QNETWORKREPLY_READBUFFERSIZE )
{
  QNetworkReply * obj = (QNetworkReply *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQINT64( obj->readBufferSize () );
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
virtual void setReadBufferSize ( qint64 size )
*/
HB_FUNC_STATIC( QNETWORKREPLY_SETREADBUFFERSIZE )
{
  QNetworkReply * obj = (QNetworkReply *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setReadBufferSize ( PQINT64(1) );
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
QNetworkAccessManager * manager () const
*/
HB_FUNC_STATIC( QNETWORKREPLY_MANAGER )
{
  QNetworkReply * obj = (QNetworkReply *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QNetworkAccessManager * ptr = obj->manager ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QNETWORKACCESSMANAGER" );
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
QNetworkAccessManager::Operation operation () const
*/
HB_FUNC_STATIC( QNETWORKREPLY_OPERATION )
{
  QNetworkReply * obj = (QNetworkReply *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->operation () );
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
QNetworkRequest request () const
*/
HB_FUNC_STATIC( QNETWORKREPLY_REQUEST )
{
  QNetworkReply * obj = (QNetworkReply *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QNetworkRequest( obj->request () );
      _qt5xhb_createReturnClass ( ptr, "QNETWORKREQUEST", true );
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
NetworkError error () const
*/
HB_FUNC_STATIC( QNETWORKREPLY_ERROR )
{
  QNetworkReply * obj = (QNetworkReply *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->error () );
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
bool isFinished () const
*/
HB_FUNC_STATIC( QNETWORKREPLY_ISFINISHED )
{
  QNetworkReply * obj = (QNetworkReply *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isFinished () );
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
bool isRunning () const
*/
HB_FUNC_STATIC( QNETWORKREPLY_ISRUNNING )
{
  QNetworkReply * obj = (QNetworkReply *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isRunning () );
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
QUrl url () const
*/
HB_FUNC_STATIC( QNETWORKREPLY_URL )
{
  QNetworkReply * obj = (QNetworkReply *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QUrl( obj->url () );
      _qt5xhb_createReturnClass ( ptr, "QURL", true );
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
QVariant header ( QNetworkRequest::KnownHeaders header ) const
*/
HB_FUNC_STATIC( QNETWORKREPLY_HEADER )
{
  QNetworkReply * obj = (QNetworkReply *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      auto ptr = new QVariant( obj->header ( (QNetworkRequest::KnownHeaders) hb_parni(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
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
bool hasRawHeader ( const QByteArray & headerName ) const
*/
HB_FUNC_STATIC( QNETWORKREPLY_HASRAWHEADER )
{
  QNetworkReply * obj = (QNetworkReply *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
    {
#endif
      RBOOL( obj->hasRawHeader ( *PQBYTEARRAY(1) ) );
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
QList<QByteArray> rawHeaderList () const
*/
HB_FUNC_STATIC( QNETWORKREPLY_RAWHEADERLIST )
{
  QNetworkReply * obj = (QNetworkReply *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<QByteArray> list = obj->rawHeaderList ();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QBYTEARRAY" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      for( auto i = 0; i < list.count(); i++ )
      {
        if( pDynSym )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QByteArray *) new QByteArray ( list[i] ) );
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
          hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QBYTEARRAY", HB_ERR_ARGS_BASEPARAMS );
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
  }
}

/*
QByteArray rawHeader ( const QByteArray & headerName ) const
*/
HB_FUNC_STATIC( QNETWORKREPLY_RAWHEADER )
{
  QNetworkReply * obj = (QNetworkReply *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
    {
#endif
      auto ptr = new QByteArray( obj->rawHeader ( *PQBYTEARRAY(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY", true );
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
const QList<RawHeaderPair>& rawHeaderPairs() const;
*/

/*
QVariant attribute ( QNetworkRequest::Attribute code ) const
*/
HB_FUNC_STATIC( QNETWORKREPLY_ATTRIBUTE )
{
  QNetworkReply * obj = (QNetworkReply *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      auto ptr = new QVariant( obj->attribute ( (QNetworkRequest::Attribute) hb_parni(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
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
QSslConfiguration sslConfiguration () const
*/
HB_FUNC_STATIC( QNETWORKREPLY_SSLCONFIGURATION )
{
  QNetworkReply * obj = (QNetworkReply *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QSslConfiguration( obj->sslConfiguration () );
      _qt5xhb_createReturnClass ( ptr, "QSSLCONFIGURATION", true );
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
void setSslConfiguration ( const QSslConfiguration & configuration )
*/
HB_FUNC_STATIC( QNETWORKREPLY_SETSSLCONFIGURATION )
{
  QNetworkReply * obj = (QNetworkReply *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSSLCONFIGURATION(1) )
    {
#endif
      obj->setSslConfiguration ( *PQSSLCONFIGURATION(1) );
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
virtual void abort () = 0 (slot)
*/
HB_FUNC_STATIC( QNETWORKREPLY_ABORT )
{
  QNetworkReply * obj = (QNetworkReply *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->abort ();
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
void ignoreSslErrors ( const QList<QSslError> & errors )
*/
void QNetworkReply_ignoreSslErrors1 ()
{
  QNetworkReply * obj = (QNetworkReply *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
       QList<QSslError> par1;
PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aList1);
for (i1=0;i1<nLen1;i1++)
{
  par1 << *(QSslError *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
}
      obj->ignoreSslErrors ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void ignoreSslErrors () (slot)
*/
void QNetworkReply_ignoreSslErrors2 ()
{
  QNetworkReply * obj = (QNetworkReply *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
      obj->ignoreSslErrors ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void ignoreSslErrors ( const QList<QSslError> & errors )
//[2]virtual void ignoreSslErrors ()

HB_FUNC_STATIC( QNETWORKREPLY_IGNORESSLERRORS )
{
  if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QNetworkReply_ignoreSslErrors1();
  }
  else if( ISNUMPAR(0) )
  {
    QNetworkReply_ignoreSslErrors2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual qint64 writeData(const char *data, qint64 len) Q_DECL_OVERRIDE [protected]
*/

/*
void setOperation(QNetworkAccessManager::Operation operation) [protected]
*/

/*
void setRequest(const QNetworkRequest &request) [protected]
*/

/*
void setError(NetworkError errorCode, const QString &errorString) [protected]
*/

/*
void setFinished(bool) [protected]
*/

/*
void setUrl(const QUrl &url) [protected]
*/

/*
void setHeader(QNetworkRequest::KnownHeaders header, const QVariant &value) [protected]
*/

/*
void setRawHeader(const QByteArray &headerName, const QByteArray &value) [protected]
*/

/*
void setAttribute(QNetworkRequest::Attribute code, const QVariant &value) [protected]
*/

/*
virtual void sslConfigurationImplementation(QSslConfiguration &) const [protected]
*/

/*
virtual void setSslConfigurationImplementation(const QSslConfiguration &) [protected]
*/

/*
virtual void ignoreSslErrorsImplementation(const QList<QSslError> &) [protected]
*/

/*
void downloadProgress( qint64 bytesReceived, qint64 bytesTotal )
*/
HB_FUNC_STATIC( QNETWORKREPLY_ONDOWNLOADPROGRESS )
{
  QNetworkReply * sender = (QNetworkReply *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("downloadProgress(qint64,qint64)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QNetworkReply::downloadProgress, 
                                                              [sender, indexOfCodeBlock]
                                                              (qint64 arg1, qint64 arg2) {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject ( (QObject *) sender, "QNETWORKREPLY" );
            PHB_ITEM pArg1 = hb_itemPutNLL( NULL, arg1 );
            PHB_ITEM pArg2 = hb_itemPutNLL( NULL, arg2 );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 3, pSender, pArg1, pArg2 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
            hb_itemRelease( pArg2 );
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
void error( QNetworkReply::NetworkError code )
*/
HB_FUNC_STATIC( QNETWORKREPLY_ONERROR )
{
  QNetworkReply * sender = (QNetworkReply *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("error(QNetworkReply::NetworkError)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              QOverload<QNetworkReply::NetworkError>::of(&QNetworkReply::error), 
                                                              [sender, indexOfCodeBlock]
                                                              (QNetworkReply::NetworkError arg1) {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject ( (QObject *) sender, "QNETWORKREPLY" );
            PHB_ITEM pArg1 = hb_itemPutNI( NULL, (int) arg1 );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
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
void finished()
*/
HB_FUNC_STATIC( QNETWORKREPLY_ONFINISHED )
{
  QNetworkReply * sender = (QNetworkReply *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("finished()");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QNetworkReply::finished, 
                                                              [sender, indexOfCodeBlock]
                                                              () {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject ( (QObject *) sender, "QNETWORKREPLY" );
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
void metaDataChanged()
*/
HB_FUNC_STATIC( QNETWORKREPLY_ONMETADATACHANGED )
{
  QNetworkReply * sender = (QNetworkReply *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("metaDataChanged()");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QNetworkReply::metaDataChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              () {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject ( (QObject *) sender, "QNETWORKREPLY" );
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
void uploadProgress( qint64 bytesSent, qint64 bytesTotal )
*/
HB_FUNC_STATIC( QNETWORKREPLY_ONUPLOADPROGRESS )
{
  QNetworkReply * sender = (QNetworkReply *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("uploadProgress(qint64,qint64)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QNetworkReply::uploadProgress, 
                                                              [sender, indexOfCodeBlock]
                                                              (qint64 arg1, qint64 arg2) {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject ( (QObject *) sender, "QNETWORKREPLY" );
            PHB_ITEM pArg1 = hb_itemPutNLL( NULL, arg1 );
            PHB_ITEM pArg2 = hb_itemPutNLL( NULL, arg2 );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 3, pSender, pArg1, pArg2 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
            hb_itemRelease( pArg2 );
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
void encrypted()
*/
HB_FUNC_STATIC( QNETWORKREPLY_ONENCRYPTED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QNetworkReply * sender = (QNetworkReply *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("encrypted()");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QNetworkReply::encrypted, 
                                                              [sender, indexOfCodeBlock]
                                                              () {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject ( (QObject *) sender, "QNETWORKREPLY" );
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
#else
hb_retl( false );
#endif
}

/*
void sslErrors( const QList<QSslError> & errors )
*/
HB_FUNC_STATIC( QNETWORKREPLY_ONSSLERRORS )
{
  QNetworkReply * sender = (QNetworkReply *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("sslErrors(QList<QSslError>)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QNetworkReply::sslErrors, 
                                                              [sender, indexOfCodeBlock]
                                                              (const QList<QSslError> & arg1) {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject ( (QObject *) sender, "QNETWORKREPLY" );
            PHB_DYNS pDynSym = hb_dynsymFindName( "QSSLERROR" );
            PHB_ITEM pArg1 = hb_itemArrayNew(0);
            for( auto i = 0; i < arg1.count(); i++ )
            {
              if( pDynSym )
              {
                hb_vmPushDynSym( pDynSym );
                hb_vmPushNil();
                hb_vmDo( 0 );
                PHB_ITEM pTempObject = hb_itemNew( NULL );
                hb_itemCopy( pTempObject, hb_stackReturnItem() );
                PHB_ITEM pTempItem = hb_itemNew( NULL );
                hb_itemPutPtr( pTempItem, (QSslError *) new QSslError ( arg1 [i] ) );
                hb_objSendMsg( pTempObject, "NEWFROMPOINTER", 1, pTempItem );
                hb_arrayAddForward( pArg1, pTempObject );
                hb_itemRelease( pTempObject );
                hb_itemRelease( pTempItem );
              }
              else
              {
                hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QSSLERROR", HB_ERR_ARGS_BASEPARAMS );
              }
            }
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
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
void preSharedKeyAuthenticationRequired( QSslPreSharedKeyAuthenticator * authenticator )
*/
HB_FUNC_STATIC( QNETWORKREPLY_ONPRESHAREDKEYAUTHENTICATIONREQUIRED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,5,0))
  QNetworkReply * sender = (QNetworkReply *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("preSharedKeyAuthenticationRequired(QSslPreSharedKeyAuthenticator*)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QNetworkReply::preSharedKeyAuthenticationRequired, 
                                                              [sender, indexOfCodeBlock]
                                                              (QSslPreSharedKeyAuthenticator * arg1) {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject ( (QObject *) sender, "QNETWORKREPLY" );
            PHB_ITEM pArg1 = Signals4_return_object( (void *) arg1, "QSSLPRESHAREDKEYAUTHENTICATOR" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
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
#else
hb_retl( false );
#endif
}

/*
void redirected( const QUrl & url )
*/
HB_FUNC_STATIC( QNETWORKREPLY_ONREDIRECTED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,6,0))
  QNetworkReply * sender = (QNetworkReply *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("redirected(QUrl)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QNetworkReply::redirected, 
                                                              [sender, indexOfCodeBlock]
                                                              (const QUrl & arg1) {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject ( (QObject *) sender, "QNETWORKREPLY" );
            PHB_ITEM pArg1 = Signals4_return_object( (void *) &arg1, "QURL" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
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
#else
hb_retl( false );
#endif
}

/*
void redirectAllowed()
*/
HB_FUNC_STATIC( QNETWORKREPLY_ONREDIRECTALLOWED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
  QNetworkReply * sender = (QNetworkReply *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("redirectAllowed()");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QNetworkReply::redirectAllowed, 
                                                              [sender, indexOfCodeBlock]
                                                              () {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject ( (QObject *) sender, "QNETWORKREPLY" );
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
#else
hb_retl( false );
#endif
}

#pragma ENDDUMP
