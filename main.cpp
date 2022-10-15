#include <QGuiApplication>
#include <QQmlApplicationEngine>


<<<<<<< HEAD
=======

>>>>>>> a0bc0b29d7c041fcf7fc70f29863831e9a14246a
int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
<<<<<<< HEAD
    const QUrl url(u"qrc:/renterPage.qml"_qs);
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
=======
    const QUrl url(u"qrc:/adminPanel.qml"_qs);
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
>>>>>>> a0bc0b29d7c041fcf7fc70f29863831e9a14246a
    engine.load(url);

    return app.exec();
}
