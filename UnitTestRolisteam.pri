ROLISTEAMSRC = lib/rolisteam

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

DEFINES += VERSION_MAJOR=1 VERSION_MIDDLE=7 VERSION_MINOR=0






TEMPLATE=app
QT += core \
 network \
 testlib


