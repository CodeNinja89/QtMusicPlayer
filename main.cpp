#include <QApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "player.h"

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    QQmlApplicationEngine engine;
    player p;
    engine.rootContext()->setContextProperty(QStringLiteral("musicUrl"), p.getMusicUrl());
    const QStringList arguments = QCoreApplication::arguments();
    engine.rootContext()->setContextProperty(QStringLiteral("url"), p.getCommandlineUrl(arguments));
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
