include(../UnitTestRolisteam.pri)

TARGET = tst_chat
CONFIG   += console
CONFIG   -= app_bundle

QT += widgets gui

TEMPLATE = app

HEADERS += ../$$ROLISTEAMSRC/src/chat/improvedtextedit.h

SOURCES += \
    tst_chat.cpp \
    ../$$ROLISTEAMSRC/src/chat/improvedtextedit.cpp

INCLUDEPATH += ../$$ROLISTEAMSRC/src/chat/ ../$$ROLISTEAMSRC/src/ ../$$ROLISTEAMSRC/src/widgets ../$$ROLISTEAMSRC/src/network ../ ../$$ROLISTEAMSRC/src/preferences
INCLUDEPATH += ../lib/diceparser/
INCLUDEPATH += ../lib/diceparser/node
INCLUDEPATH += ../lib/diceparser/result


include(../lib/diceparser/diceparser.pri)
