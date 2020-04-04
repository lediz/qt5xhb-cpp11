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

CLASS QModbusServer INHERIT QModbusDevice

   METHOD delete

   METHOD onDataWritten

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QModbusServer
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#include <QtSerialBus/QModbusServer>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals4.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#include <QtSerialBus/QModbusServer>
#endif
#endif

/*
explicit QModbusServer(QObject *parent = nullptr)
*/
/*
QModbusServer(QModbusServerPrivate &dd, QObject *parent = nullptr) [protected]
*/

/*
~QModbusServer()
*/
HB_FUNC_STATIC( QMODBUSSERVER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  auto obj = (QModbusServer *) Qt5xHb::itemGetPtrStackSelfItem();

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
int serverAddress() const
*/

/*
void setServerAddress(int serverAddress)
*/

/*
virtual bool setMap(const QModbusDataUnitMap &map)
*/

/*
virtual bool processesBroadcast() const
*/

/*
virtual QVariant value(int option) const
*/

/*
virtual bool setValue(int option, const QVariant &value)
*/

/*
bool data(QModbusDataUnit *newData) const
*/

/*
bool setData(const QModbusDataUnit &unit)
*/

/*
bool setData(QModbusDataUnit::RegisterType table, quint16 address, quint16 data)
*/

/*
bool data(QModbusDataUnit::RegisterType table, quint16 address, quint16 *data) const
*/

/*
virtual bool writeData(const QModbusDataUnit &unit) [protected]
*/

/*
virtual bool readData(QModbusDataUnit *newData) const [protected]
*/

/*
virtual QModbusResponse processRequest(const QModbusPdu &request) [protected]
*/

/*
virtual QModbusResponse processPrivateRequest(const QModbusPdu &request) [protected]
*/

/*
void dataWritten( QModbusDataUnit::RegisterType table, int address, int size )
*/
HB_FUNC_STATIC( QMODBUSSERVER_ONDATAWRITTEN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  auto sender = (QModbusServer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("dataWritten(QModbusDataUnit::RegisterType,int,int)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QModbusServer::dataWritten, 
                                                              [sender, indexOfCodeBlock]
                                                              (QModbusDataUnit::RegisterType arg1, int arg2, int arg3) {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject( (QObject *) sender, "QMODBUSSERVER" );
            PHB_ITEM pArg1 = hb_itemPutNI( NULL, (int) arg1 );
            PHB_ITEM pArg2 = hb_itemPutNI( NULL, arg2 );
            PHB_ITEM pArg3 = hb_itemPutNI( NULL, arg3 );
            hb_vmEvalBlockV( cb, 4, pSender, pArg1, pArg2, pArg3 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
            hb_itemRelease( pArg2 );
            hb_itemRelease( pArg3 );
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
