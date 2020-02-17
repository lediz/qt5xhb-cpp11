/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SIGNALS4_H
#define SIGNALS4_H

#include <QObject>
#include <QMetaObject>
#include <QMetaMethod>
#include <QVector>
#include <QList>
#include <QCoreApplication>
#include <QString>
#include <QMutex>

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#endif

//bool Signals4_connect_signal ( QObject * object, int signal, PHB_ITEM codeblock );
int Signals4_connect_signal ( QObject * object, int signal, PHB_ITEM codeblock );
bool Signals4_disconnect_signal ( QObject * object, int signal );
bool Signals4_is_signal_connected ( QObject * object, int signal );
PHB_ITEM Signals4_return_codeblock ( QObject * object, int signal );
//PHB_ITEM Signals4_return_codeblock ( QObject * object, int signal, int indexOfCodeBlock );
PHB_ITEM Signals4_return_codeblock ( int indexOfCodeBlock );
void Signals4_release_codeblocks ();
void Signals4_disconnect_all_signals (QObject * obj, bool children);
bool Signals4_connection ( QObject * s, int signal );
bool Signals4_connection ( QObject * s, int signal, int & indexOfCodeBlock );
bool Signals4_disconnection ( QObject * s, int signal );
PHB_ITEM Signals4_return_object ( void * ptr, const char * classname );
PHB_ITEM Signals4_return_qobject ( QObject * ptr, const char * classname );
//bool Signals4_store_connection ( QObject * s, int signal, QMetaObject::Connection connection );
bool Signals4_store_connection ( int index, QMetaObject::Connection connection );
QMetaObject::Connection Signals4_get_connection ( QObject * s, int signal );

class Signals4: public QObject
{
  public:
  Signals4(QObject *parent = nullptr);
  ~Signals4();
  QVector<QObject*> list1;                // armazena ponteiro do objeto
  QVector<int> list2;                     // armazena indice do sinal
  QVector<PHB_ITEM> list3;                // armazena codeblock
  QVector<QMetaObject::Connection> list4; // handle da conex�o
  QMutex * mutex;
};

#endif
