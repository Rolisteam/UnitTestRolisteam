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

INCLUDEPATH += ../$$ROLISTEAMSRC/src/chat/
