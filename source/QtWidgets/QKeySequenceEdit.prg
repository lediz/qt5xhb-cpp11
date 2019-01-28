/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QKEYSEQUENCE
#endif

CLASS QKeySequenceEdit INHERIT QWidget

   METHOD new
   METHOD delete
   METHOD keySequence
   METHOD setKeySequence
   METHOD clear

   METHOD onEditingFinished
   METHOD onKeySequenceChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QKeySequenceEdit
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QKeySequenceEdit>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals2.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QKeySequenceEdit>
#endif
#endif

/*
QKeySequenceEdit(QWidget *parent = nullptr)
*/
void QKeySequenceEdit_new1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QKeySequenceEdit * o = new QKeySequenceEdit ( OPQWIDGET(1,nullptr) );
  _qt5xhb_returnNewObject( o, false );
#endif
}

/*
QKeySequenceEdit(const QKeySequence &keySequence, QWidget *parent = nullptr)
*/
void QKeySequenceEdit_new2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QKeySequenceEdit * o = new QKeySequenceEdit ( *PQKEYSEQUENCE(1), OPQWIDGET(2,nullptr) );
  _qt5xhb_returnNewObject( o, false );
#endif
}

//[1]QKeySequenceEdit(QWidget *parent = nullptr)
//[2]QKeySequenceEdit(const QKeySequence &keySequence, QWidget *parent = nullptr)

HB_FUNC_STATIC( QKEYSEQUENCEEDIT_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QKeySequenceEdit_new1();
  }
  else if( ISBETWEEN(1,2) && ISQKEYSEQUENCE(1) && ISOPTQWIDGET(2) )
  {
    QKeySequenceEdit_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

HB_FUNC_STATIC( QKEYSEQUENCEEDIT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QKeySequenceEdit * obj = (QKeySequenceEdit *) _qt5xhb_itemGetPtrStackSelfItem();

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
QKeySequence keySequence() const
*/
HB_FUNC_STATIC( QKEYSEQUENCEEDIT_KEYSEQUENCE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QKeySequenceEdit * obj = (QKeySequenceEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QKeySequence * ptr = new QKeySequence( obj->keySequence () );
      _qt5xhb_createReturnClass ( ptr, "QKEYSEQUENCE", true );
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
void setKeySequence(const QKeySequence &keySequence)
*/
HB_FUNC_STATIC( QKEYSEQUENCEEDIT_SETKEYSEQUENCE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QKeySequenceEdit * obj = (QKeySequenceEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQKEYSEQUENCE(1) )
    {
#endif
      obj->setKeySequence ( *PQKEYSEQUENCE(1) );
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
void clear()
*/
HB_FUNC_STATIC( QKEYSEQUENCEEDIT_CLEAR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QKeySequenceEdit * obj = (QKeySequenceEdit *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->clear ();
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
void editingFinished()
*/
HB_FUNC_STATIC( QKEYSEQUENCEEDIT_ONEDITINGFINISHED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QKeySequenceEdit * sender = (QKeySequenceEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    if( hb_pcount() == 1 )
    {
      if( Signals2_connection( sender, "editingFinished()" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QKeySequenceEdit::editingFinished, 
                                                              [sender]
                                                              () {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "editingFinished()" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QKEYSEQUENCEEDIT" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 1, pSender );
            hb_itemRelease( pSender );
          }

        });

        Signals2_store_connection( sender, "editingFinished()", connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals2_disconnection( sender, "editingFinished()" );

      QObject::disconnect( Signals2_get_connection( sender, "editingFinished()" ) );

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
#endif
}

/*
void keySequenceChanged( const QKeySequence & keySequence )
*/
HB_FUNC_STATIC( QKEYSEQUENCEEDIT_ONKEYSEQUENCECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QKeySequenceEdit * sender = (QKeySequenceEdit *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    if( hb_pcount() == 1 )
    {
      if( Signals2_connection( sender, "keySequenceChanged(QKeySequence)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QKeySequenceEdit::keySequenceChanged, 
                                                              [sender]
                                                              (const QKeySequence & arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "keySequenceChanged(QKeySequence)" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QKEYSEQUENCEEDIT" );
            PHB_ITEM pArg1 = Signals2_return_object( (void *) &arg1, "QKEYSEQUENCE" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "keySequenceChanged(QKeySequence)", connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals2_disconnection( sender, "keySequenceChanged(QKeySequence)" );

      QObject::disconnect( Signals2_get_connection( sender, "keySequenceChanged(QKeySequence)" ) );

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
#endif
}

#pragma ENDDUMP
