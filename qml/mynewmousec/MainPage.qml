import QtQuick 1.1
import com.nokia.meego 1.0

Page {
    id: mainPage
    //tools: commonTools // does not work. what is that anyways?

    TextField {
        anchors {
            horizontalCenter: parent.horizontalCenter
            topMargin: 20
        }
        id: ipaddressinput
        text: qsTr("192.168.0.100")
    }

    TextField {
        anchors {
            horizontalCenter: parent.horizontalCenter
            top: ipaddressinput.bottom
            topMargin: 20
        }
        id: portinput
        text: qsTr("2123")
    }

    Label {
        anchors {
            top: ipaddressinput.top
            topMargin: 5
            right: ipaddressinput.left
            rightMargin: 20
        }
        id: ipaddresslabel
        text: qsTr("IP address:")
    }

    Label {
        anchors {
            top: portinput.top
            topMargin: 5
            right: portinput.left
            rightMargin: 20
        }
        id: portlabel
        text: "Port: "
    }

    Button {
        id: connectbutton

        anchors {
            horizontalCenter: parent.horizontalCenter
            top: portinput.bottom
            topMargin: 10
        }

        text: qsTr("Connect")
        onClicked: if(connection.connect(ipaddressinput.text,portinput.text))
                   {
                       mainPage.visible = false
                       mousePage.visible = true
                   }
    }
}
