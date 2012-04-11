#include <QtGui/QApplication>

#include <QDeclarativeContext>

#include "qmlapplicationviewer.h"

#include "connection.h"

Q_DECL_EXPORT int main(int argc, char *argv[])
{
    QScopedPointer<QApplication> app(createApplication(argc, argv));

    connection theconnection;

    QmlApplicationViewer viewer;
    viewer.setOrientation(QmlApplicationViewer::ScreenOrientationAuto);
    viewer.setMainQmlFile(QLatin1String("qml/mynewmousec/main.qml"));

    viewer.rootContext()->setContextProperty("connection",&theconnection);

    viewer.showExpanded();


    return app->exec();
}
