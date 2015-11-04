#include "nullchat.h"

NullChat::NullChat()
{
}
NullChat::~NullChat()
{
}
QString NullChat::identifier() const
{
	return QString("NullChat");
}

QString NullChat::name() const
{
	return QString("NullChat Name");
}
bool NullChat::belongsTo(Player* player) const
{
	return true;
}
void NullChat::sendThem(NetworkMessage & message, NetworkLink * but) const
{
	return;
}
bool NullChat::everyPlayerHasFeature(const QString & feature, quint8 version) const
{
	return true;
}
