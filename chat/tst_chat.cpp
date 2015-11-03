/***************************************************************************
 *   Copyright (C) 2015 by Renaud Guezennec                                *
 *   http://renaudguezennec.homelinux.org/accueil,3.html                   *
 *                                                                         *
 *   Rolisteam is free software; you can redistribute it and/or modify     *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 *   This program is distributed in the hope that it will be useful,       *
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of        *
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the         *
 *   GNU General Public License for more details.                          *
 *                                                                         *
 *   You should have received a copy of the GNU General Public License     *
 *   along with this program; if not, write to the                         *
 *   Free Software Foundation, Inc.,                                       *
 *   59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.             *
 ***************************************************************************/
#include <QtTest/QtTest>

#include <improvedtextedit.h>
#include <chatwindow.h>

class ChatWindowTest : public QObject
{
    Q_OBJECT

public:
    ChatWindowTest();

private slots:
    void initTestCase();
    void cleanupTestCase();
//    void getAndSetTest();
    void enterText();


private:
    ImprovedTextEdit* m_impTextEditor;
    ChatWindow* m_chatWindow;
};
ChatWindowTest::ChatWindowTest()
{

}
void ChatWindowTest::initTestCase()
{
    m_impTextEditor =new ImprovedTextEdit(NULL);

    m_chatWindow = new ChatWindow(NULL,NULL);
}

//void ChatWindowTest::getAndSetTest()
//{


//}
void ChatWindowTest::enterText()
{
    QString test = QStringLiteral("Text Test Text Test");
    m_impTextEditor->setText(test);
    QSignalSpy spy(m_impTextEditor, SIGNAL(textValidated(bool,QString)));
    QTest::keyPress(m_impTextEditor,Qt::Key_Enter);
    QCOMPARE(spy.count(), 1);
}
//void ChatWindowTest::colorChangedTwiceTest()
//{

//    QCOMPARE(spy.count(), 1);
//}
//void ChatWindowTest::colorChangedTwiceDifferentTest()
//{

//    QCOMPARE(spy.count(), 2);
//}
void ChatWindowTest::cleanupTestCase()
{
    delete m_impTextEditor;
}


QTEST_MAIN(ChatWindowTest);

#include "tst_chat.moc"
