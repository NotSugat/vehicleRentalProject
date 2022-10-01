#include <QGuiApplication>
#include <QQmlApplicationEngine>



int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    const QUrl url(u"qrc:/adminPanel.qml"_qs);
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    engine.load(url);

    return app.exec();
}
