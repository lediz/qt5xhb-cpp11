/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef HCODEBLOCKVALIDATOR_H
#define HCODEBLOCKVALIDATOR_H

#include <QtGui/QValidator>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

class HCodeBlockValidator : public QValidator
{
  Q_OBJECT
public:
  explicit HCodeBlockValidator( QObject *parent = nullptr );
  HCodeBlockValidator( PHB_ITEM codeblock, QObject *parent = nullptr );
  ~HCodeBlockValidator();

  QValidator::State validate( QString & input, int & pos ) const;
  void fixup( QString & input ) const;

private:
  PHB_ITEM m_block;
};

#endif /* HCODEBLOCKVALIDATOR_H */
