#ifndef PLAYER_H
#define PLAYER_H

#include <QObject>
#include <QStandardPaths>
#include <QDir>
#include <QUrl>

class player : public QObject
{
    Q_OBJECT
private:
    QUrl musicUrl;
    QStringList musicPaths;
    QUrl commandLineUrl;
public:
    explicit player(QObject *parent = 0);
    QUrl getMusicUrl();
    QUrl getCommandlineUrl(QStringList);

signals:

public slots:
};

#endif // PLAYER_H
