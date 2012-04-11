import QtQuick 1.1
import com.nokia.meego 1.0

PageStackWindow {
    id: appWindow

    initialPage: mainPage

    showToolBar: false

    MainPage {
        id: mainPage
    }

    MousePage {
        id: mousePage
    }

    KeyboardPage {
        id: keyboardPage
    }
}
