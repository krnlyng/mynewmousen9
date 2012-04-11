/*
    This file is part of mynewmousec.

    mynewmousec is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    mynewmousec is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with mynewmousec.  If not, see <http://www.gnu.org/licenses/>.
*/

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
