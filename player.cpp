#include "player.h"

player::player(QObject *parent) : QObject(parent)
{
    musicPaths = QStandardPaths::standardLocations(QStandardPaths::MusicLocation);
    musicUrl = QUrl::fromLocalFile(musicPaths.isEmpty() ? QDir::homePath() : musicPaths.first());
}

QUrl player::getMusicUrl() {
    return musicUrl;
}

QUrl player::getCommandlineUrl(QStringList args) {
    commandLineUrl = args.size() > 1 ? QUrl::fromLocalFile(args.at(1)) : QUrl();
    return commandLineUrl;
}
