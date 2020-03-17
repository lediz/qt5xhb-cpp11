/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QURL
#endif

CLASS QOAuth1 INHERIT QAbstractOAuth

   METHOD new
   METHOD delete
   METHOD clientSharedSecret
   METHOD setClientSharedSecret
   METHOD setClientCredentials
   METHOD tokenSecret
   METHOD setTokenSecret
   METHOD setTokenCredentials
   METHOD temporaryCredentialsUrl
   METHOD setTemporaryCredentialsUrl
   METHOD tokenCredentialsUrl
   METHOD setTokenCredentialsUrl
   METHOD setSignatureMethod
   METHOD grant
   METHOD continueGrantWithVerifier

   METHOD onClientSharedSecretChanged
   METHOD onSignatureMethodChanged
   METHOD onTemporaryCredentialsUrlChanged
   METHOD onTokenCredentialsUrlChanged
   METHOD onTokenSecretChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QOAuth1
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
#include <QtNetworkAuth/QOAuth1>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals4.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
#include <QtNetworkAuth/QOAuth1>
#endif
#endif

/*
explicit QOAuth1(QObject *parent = nullptr)
*/
void QOAuth1_new1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto obj = new QOAuth1 ( OPQOBJECT(1,nullptr) );
  _qt5xhb_returnNewObject( obj, false );
#endif
}

/*
explicit QOAuth1(QNetworkAccessManager *manager, QObject *parent = nullptr)
*/
void QOAuth1_new2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto obj = new QOAuth1 ( PQNETWORKACCESSMANAGER(1), OPQOBJECT(2,nullptr) );
  _qt5xhb_returnNewObject( obj, false );
#endif
}

/*
QOAuth1(const QString &clientIdentifier, const QString &clientSharedSecret, QNetworkAccessManager *manager, QObject *parent = nullptr)
*/

//[1]explicit QOAuth1(QObject *parent = nullptr)
//[2]explicit QOAuth1(QNetworkAccessManager *manager, QObject *parent = nullptr)

HB_FUNC_STATIC( QOAUTH1_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QOAuth1_new1();
  }
  else if( ISBETWEEN(1,2) && ISQNETWORKACCESSMANAGER(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QOAuth1_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QOAUTH1_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto obj = (QOAuth1 *) _qt5xhb_itemGetPtrStackSelfItem();

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
QString clientSharedSecret() const
*/
HB_FUNC_STATIC( QOAUTH1_CLIENTSHAREDSECRET )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto obj = (QOAuth1 *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->clientSharedSecret () );
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
void setClientSharedSecret(const QString &clientSharedSecret)
*/
HB_FUNC_STATIC( QOAUTH1_SETCLIENTSHAREDSECRET )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto obj = (QOAuth1 *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setClientSharedSecret ( PQSTRING(1) );
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

/*
QPair<QString, QString> clientCredentials() const
*/

/*
void setClientCredentials(const QPair<QString, QString> &clientCredentials)
*/

/*
void setClientCredentials(const QString &clientIdentifier, const QString &clientSharedSecret)
*/
HB_FUNC_STATIC( QOAUTH1_SETCLIENTCREDENTIALS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto obj = (QOAuth1 *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
    {
#endif
      obj->setClientCredentials ( PQSTRING(1), PQSTRING(2) );
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

//[1]void setClientCredentials(const QPair<QString, QString> &clientCredentials)
//[2]void setClientCredentials(const QString &clientIdentifier, const QString &clientSharedSecret)

/*
QString tokenSecret() const
*/
HB_FUNC_STATIC( QOAUTH1_TOKENSECRET )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto obj = (QOAuth1 *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->tokenSecret () );
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
void setTokenSecret(const QString &tokenSecret)
*/
HB_FUNC_STATIC( QOAUTH1_SETTOKENSECRET )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto obj = (QOAuth1 *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setTokenSecret ( PQSTRING(1) );
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

/*
QPair<QString, QString> tokenCredentials() const
*/

/*
void setTokenCredentials(const QPair<QString, QString> &tokenCredentials)
*/

/*
void setTokenCredentials(const QString &token, const QString &tokenSecret)
*/
HB_FUNC_STATIC( QOAUTH1_SETTOKENCREDENTIALS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto obj = (QOAuth1 *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
    {
#endif
      obj->setTokenCredentials ( PQSTRING(1), PQSTRING(2) );
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

//[1]void setTokenCredentials(const QPair<QString, QString> &tokenCredentials)
//[2]void setTokenCredentials(const QString &token, const QString &tokenSecret)

/*
QUrl temporaryCredentialsUrl() const
*/
HB_FUNC_STATIC( QOAUTH1_TEMPORARYCREDENTIALSURL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto obj = (QOAuth1 *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QUrl( obj->temporaryCredentialsUrl () );
      _qt5xhb_createReturnClass ( ptr, "QURL", true );
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
void setTemporaryCredentialsUrl(const QUrl &url)
*/
HB_FUNC_STATIC( QOAUTH1_SETTEMPORARYCREDENTIALSURL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto obj = (QOAuth1 *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQURL(1) )
    {
#endif
      obj->setTemporaryCredentialsUrl ( *PQURL(1) );
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

/*
QUrl tokenCredentialsUrl() const
*/
HB_FUNC_STATIC( QOAUTH1_TOKENCREDENTIALSURL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto obj = (QOAuth1 *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QUrl( obj->tokenCredentialsUrl () );
      _qt5xhb_createReturnClass ( ptr, "QURL", true );
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
void setTokenCredentialsUrl(const QUrl &url)
*/
HB_FUNC_STATIC( QOAUTH1_SETTOKENCREDENTIALSURL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto obj = (QOAuth1 *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQURL(1) )
    {
#endif
      obj->setTokenCredentialsUrl ( *PQURL(1) );
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

/*
SignatureMethod signatureMethod() const
*/

/*
void setSignatureMethod(SignatureMethod value)
*/
HB_FUNC_STATIC( QOAUTH1_SETSIGNATUREMETHOD )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto obj = (QOAuth1 *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setSignatureMethod ( (QOAuth1::SignatureMethod) hb_parni(1) );
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

/*
QNetworkReply *head(const QUrl &url, const QVariantMap &parameters = QVariantMap()) override
*/

/*
QNetworkReply *get(const QUrl &url, const QVariantMap &parameters = QVariantMap()) override
*/

/*
QNetworkReply *post(const QUrl &url, const QVariantMap &parameters = QVariantMap()) override
*/

/*
QNetworkReply *put(const QUrl &url, const QVariantMap &parameters = QVariantMap()) override
*/

/*
QNetworkReply *deleteResource(const QUrl &url, const QVariantMap &parameters = QVariantMap()) override
*/

/*
void grant() override (slot)
*/
HB_FUNC_STATIC( QOAUTH1_GRANT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto obj = (QOAuth1 *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->grant ();
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

/*
void continueGrantWithVerifier(const QString &verifier) (slot)
*/
HB_FUNC_STATIC( QOAUTH1_CONTINUEGRANTWITHVERIFIER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto obj = (QOAuth1 *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->continueGrantWithVerifier ( PQSTRING(1) );
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

/*
QNetworkReply *requestTemporaryCredentials(QNetworkAccessManager::Operation operation, const QUrl &url, const QVariantMap &parameters = QVariantMap()) [protected]
*/

/*
QNetworkReply *requestTokenCredentials(QNetworkAccessManager::Operation operation, const QUrl &url, const QPair<QString, QString> &temporaryToken, const QVariantMap &parameters = QVariantMap()) [protected]
*/

/*
void setup(QNetworkRequest *request, const QVariantMap &signingParameters, QNetworkAccessManager::Operation operation) [protected]
*/

/*
static QByteArray nonce() [protected]
*/

/*
static QByteArray generateAuthorizationHeader(const QVariantMap &oauthParams) [protected]
*/

/*
void clientSharedSecretChanged( const QString & credential )
*/
HB_FUNC_STATIC( QOAUTH1_ONCLIENTSHAREDSECRETCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto sender = (QOAuth1 *) _qt5xhb_itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("clientSharedSecretChanged(QString)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QOAuth1::clientSharedSecretChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (const QString & arg1) {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject ( (QObject *) sender, "QOAUTH1" );
            PHB_ITEM pArg1 = hb_itemPutC( NULL, QSTRINGTOSTRING(arg1) );
            hb_vmEvalBlockV( cb, 2, pSender, pArg1 );
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
void signatureMethodChanged( QOAuth1::SignatureMethod method )
*/
HB_FUNC_STATIC( QOAUTH1_ONSIGNATUREMETHODCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto sender = (QOAuth1 *) _qt5xhb_itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("signatureMethodChanged(QOAuth1::SignatureMethod)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QOAuth1::signatureMethodChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (QOAuth1::SignatureMethod arg1) {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject ( (QObject *) sender, "QOAUTH1" );
            PHB_ITEM pArg1 = hb_itemPutNI( NULL, (int) arg1 );
            hb_vmEvalBlockV( cb, 2, pSender, pArg1 );
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
void temporaryCredentialsUrlChanged( const QUrl & url )
*/
HB_FUNC_STATIC( QOAUTH1_ONTEMPORARYCREDENTIALSURLCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto sender = (QOAuth1 *) _qt5xhb_itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("temporaryCredentialsUrlChanged(QUrl)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QOAuth1::temporaryCredentialsUrlChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (const QUrl & arg1) {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject ( (QObject *) sender, "QOAUTH1" );
            PHB_ITEM pArg1 = Signals4_return_object( (void *) &arg1, "QURL" );
            hb_vmEvalBlockV( cb, 2, pSender, pArg1 );
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
void tokenCredentialsUrlChanged( const QUrl & url )
*/
HB_FUNC_STATIC( QOAUTH1_ONTOKENCREDENTIALSURLCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto sender = (QOAuth1 *) _qt5xhb_itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("tokenCredentialsUrlChanged(QUrl)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QOAuth1::tokenCredentialsUrlChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (const QUrl & arg1) {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject ( (QObject *) sender, "QOAUTH1" );
            PHB_ITEM pArg1 = Signals4_return_object( (void *) &arg1, "QURL" );
            hb_vmEvalBlockV( cb, 2, pSender, pArg1 );
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
void tokenSecretChanged( const QString & token )
*/
HB_FUNC_STATIC( QOAUTH1_ONTOKENSECRETCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  auto sender = (QOAuth1 *) _qt5xhb_itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("tokenSecretChanged(QString)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QOAuth1::tokenSecretChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (const QString & arg1) {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject ( (QObject *) sender, "QOAUTH1" );
            PHB_ITEM pArg1 = hb_itemPutC( NULL, QSTRINGTOSTRING(arg1) );
            hb_vmEvalBlockV( cb, 2, pSender, pArg1 );
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

#pragma ENDDUMP
