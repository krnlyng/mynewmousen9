
import QtQuick 1.1
import com.nokia.meego 1.0

Page {
    id: mousePage

    Button {
        id: keyboardbutton
        text: "keyboard"
        anchors.right: parent.right
        anchors.rightMargin: 5
        anchors.top: parent.top
        anchors.topMargin: 45
        width: 140

        onClicked:
        {
            mousePage.visible = false
            keyboardPage.visible = true
        }
    }

    Button {
        id: left
        text: "left"
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 10
        anchors.left: parent.left
        anchors.leftMargin: 10
        anchors.right: parent.horizontalCenter
        anchors.rightMargin: 2

        onPressedChanged:
        {
            if(left.pressed)
            {
                connection.press_left();
                if(!connection.is_connected())
                {
                    mainPage.visible = true
                    mousePage.visible = false
                }
            }
            else
            {
                connection.release_left();
                if(!connection.is_connected())
                {
                    mainPage.visible = true
                    mousePage.visible = false
                }
            }
        }
    }

    Button {
        id: right
        text: "right"
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 10
        anchors.right: parent.right
        anchors.rightMargin: 10
        anchors.left: parent.horizontalCenter
        anchors.leftMargin: 2

        onPressedChanged:
        {
            if(right.pressed)
            {
                connection.press_right();
                if(!connection.is_connected())
                {
                    mainPage.visible = true
                    mousePage.visible = false
                }
            }
            else
            {
                connection.release_right();
                if(!connection.is_connected())
                {
                    mainPage.visible = true
                    mousePage.visible = false
                }
            }
        }
    }

    MouseArea {
        anchors.top: keyboardbutton.bottom
        anchors.topMargin: 5
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: right.top
        anchors.bottomMargin: 5

        onPressed:
        {
            connection.press_mouse_button(mouse.x,mouse.y);
            if(!connection.is_connected())
            {
                mainPage.visible = true
                mousePage.visible = false
            }
        }
        onReleased:
        {
            connection.release_mouse_button(mouse.x,mouse.y);
            if(!connection.is_connected())
            {
                mainPage.visible = true
                mousePage.visible = false
            }
        }
        onPositionChanged:
        {
            connection.move_mouse(mouse.x,mouse.y);
            if(!connection.is_connected())
            {
                mainPage.visible = true
                mousePage.visible = false
            }
        }
    }
}
