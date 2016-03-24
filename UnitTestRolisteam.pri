ROLISTEAMSRC = lib/rolisteam

DEFINES += NULL_PLAYER UNIT_TEST

INCLUDEPATH = $$ROLISTEAMSRC/src \
              $$ROLISTEAMSRC/src/widget \
                $$ROLISTEAMSRC/src/charactersheet \
                $$ROLISTEAMSRC/src/data \
                $$ROLISTEAMSRC/src/dicepluginmanager \
                $$ROLISTEAMSRC/src/drawitem \
                $$ROLISTEAMSRC/src/map \
                $$ROLISTEAMSRC/src/minuteseditor \
                $$ROLISTEAMSRC/src/network \
                $$ROLISTEAMSRC/src/pdfviewer \
                $$ROLISTEAMSRC/src/preferences \
                $$ROLISTEAMSRC/src/session \
                $$ROLISTEAMSRC/src/tchat \
                $$ROLISTEAMSRC/src/userlist \
              $$ROLISTEAMSRC/bin \


DEPENDPATH = $$ROLISTEAMSRC/src \
             $$ROLISTEAMSRC/src/widget \
                $$ROLISTEAMSRC/src/charactersheet \
                $$ROLISTEAMSRC/src/data \
                $$ROLISTEAMSRC/src/dicepluginmanager \
                $$ROLISTEAMSRC/src/drawitem \
                $$ROLISTEAMSRC/src/map \
                $$ROLISTEAMSRC/src/minuteseditor \
                $$ROLISTEAMSRC/src/network \
                $$ROLISTEAMSRC/src/pdfviewer \
                $$ROLISTEAMSRC/src/preferences \
                $$ROLISTEAMSRC/src/session \
                $$ROLISTEAMSRC/src/tchat \
                $$ROLISTEAMSRC/src/userlist \
             $$ROLISTEAMSRC/bin \

DEFINES += VERSION_MAJOR=1 VERSION_MIDDLE=8 VERSION_MINOR=0




CONFIG += c++11

TEMPLATE=app
QT += core \
 network \
 testlib


