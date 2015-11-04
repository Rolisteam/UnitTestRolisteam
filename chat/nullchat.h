#ifndef NULLCHAT_H
#define NULLCHAT_H


#include <chat/chat.h>

class NullChat : public AbstractChat
{
	Q_OBJECT

public:
	NullChat();
	virtual ~NullChat();

	QString identifier() const;
	QString name() const;
	bool belongsTo(Player* player) const;
	void sendThem(NetworkMessage & message, NetworkLink * but = NULL) const;
	bool everyPlayerHasFeature(const QString & feature, quint8 version = 0) const;
};

#endif // NULLCHAT_H
