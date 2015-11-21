include(../UnitTestRolisteam.pri)

TARGET = tst_chat
CONFIG   += console
CONFIG   -= app_bundle


DEFINES += NULL_PLAYER UNIT_TEST

QT += widgets gui printsupport xml

TEMPLATE = app

HEADERS += ../$$ROLISTEAMSRC/src/chat/improvedtextedit.h \
    ../$$ROLISTEAMSRC/src/chat/chatwindow.h \
    ../$$ROLISTEAMSRC/src/preferences/preferencesmanager.h\
    ../$$ROLISTEAMSRC/src/data/persons.h\
    ../$$ROLISTEAMSRC/src/network/networkmessage.h\
    ../$$ROLISTEAMSRC/src/chat/chatbrowser.h\
    ../$$ROLISTEAMSRC/src/chat/chat.h\
    ../$$ROLISTEAMSRC/src/network/networkmessagereader.h\
    ../$$ROLISTEAMSRC/src/network/networkmessagewriter.h\
    ../$$ROLISTEAMSRC/src/network/networkmessage.h\
    ../$$ROLISTEAMSRC/src/network/networklink.h\
    ../$$ROLISTEAMSRC/src/network/receiveevent.h\
    ../$$ROLISTEAMSRC/src/data/cleveruri.h\
    ../$$ROLISTEAMSRC/src/localpersonmodel.h\
    ../$$ROLISTEAMSRC/src/Features.h\
    ../$$ROLISTEAMSRC/src/userlist/playersList.h\
    ../$$ROLISTEAMSRC/src/userlist/playerslistproxy.h\

SOURCES += \
    tst_chat.cpp \
    ../$$ROLISTEAMSRC/src/preferences/preferencesmanager.cpp\
    ../$$ROLISTEAMSRC/src/chat/chatwindow.cpp \
    ../$$ROLISTEAMSRC/src/chat/improvedtextedit.cpp \
    ../$$ROLISTEAMSRC/src/data/persons.cpp\
    ../$$ROLISTEAMSRC/src/chat/chatbrowser.cpp\
    ../$$ROLISTEAMSRC/src/chat/chat.cpp\
    ../$$ROLISTEAMSRC/src/network/networkmessagereader.cpp\
    ../$$ROLISTEAMSRC/src/network/networkmessagewriter.cpp\
    ../$$ROLISTEAMSRC/src/network/receiveevent.cpp\
    ../$$ROLISTEAMSRC/src/network/networkmessage.cpp\
    ../$$ROLISTEAMSRC/src/network/networklink.cpp\
    ../$$ROLISTEAMSRC/src/data/cleveruri.cpp\
    ../$$ROLISTEAMSRC/src/localpersonmodel.cpp\
    ../$$ROLISTEAMSRC/src/Features.cpp\
    ../$$ROLISTEAMSRC/src/userlist/playersList.cpp\
    ../$$ROLISTEAMSRC/src/userlist/playerslistproxy.cpp\





INCLUDEPATH += ../$$ROLISTEAMSRC/src/chat/ ../$$ROLISTEAMSRC/src/ ../$$ROLISTEAMSRC/src/widgets ../$$ROLISTEAMSRC/src/odt/format_OO_oasis_ ../$$ROLISTEAMSRC/src/odt/src ../$$ROLISTEAMSRC/src/network ../ ../$$ROLISTEAMSRC/src/preferences
INCLUDEPATH += ../lib/diceparser/
INCLUDEPATH += ../lib/diceparser/node
INCLUDEPATH += ../lib/diceparser/result


FORMS += ../$$ROLISTEAMSRC/src/mainwindow.ui

include(../lib/diceparser/diceparser.pri)
