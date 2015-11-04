include(../UnitTestRolisteam.pri)

TARGET = tst_chat
CONFIG   += console
CONFIG   -= app_bundle

QT += widgets gui

TEMPLATE = app

HEADERS += ../$$ROLISTEAMSRC/src/chat/improvedtextedit.h \
	    nullchat.h \
	    ../$$ROLISTEAMSRC/src/chat/chatwindow.h
	    ../$$ROLISTEAMSRC/src/chat/chat.h \
	    ../$$ROLISTEAMSRC/src/chat/chatbrowser.h \



SOURCES += \
    tst_chat.cpp \
    nullchat.cpp \
    ../$$ROLISTEAMSRC/src/chat/improvedtextedit.cpp \
    ../$$ROLISTEAMSRC/src/chat/chatwindow.cpp \
    ../$$ROLISTEAMSRC/src/chat/chat.cpp \
    ../$$ROLISTEAMSRC/src/chat/chatbrowser.cpp \



INCLUDEPATH += ../$$ROLISTEAMSRC/src/chat/ ../$$ROLISTEAMSRC/src/ ../$$ROLISTEAMSRC/src/widgets ../$$ROLISTEAMSRC/src/network ../ ../$$ROLISTEAMSRC/src/preferences
INCLUDEPATH += ../lib/diceparser/
INCLUDEPATH += ../lib/diceparser/node
INCLUDEPATH += ../lib/diceparser/result



include(../lib/diceparser/diceparser.pri)
