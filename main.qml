import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 1.4

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("lanlan")
    Action{
        id:quitAction //相当于text就是把首字母大写
        shortcut: "ctrl+a"
        iconSource: "qrc:/image/quit.png"

    }
    Action{
        id:cutAction
        shortcut: "ctrl+x"
        iconSource: "qrc:/image/quit1.png"
    }
    Action{
        id:copyAction
        shortcut: "ctrl+c";
        iconSource:  "qrc:/image/quit1.png"

    }
    //菜单栏
    menuBar:MenuBar{
        Menu{
            title: qsTr("File")
            MenuItem{
                action: cutAction
            }
        }
        Menu{
            title: qsTr("Edit")
            MenuItem{
                action: quitAction
            }
            MenuItem{
                action: copyAction
            }
        }
    }

    Text {
        id: text
        text: qsTr("sadsad i only need money make me happy")
        anchors.centerIn: parent
    }
    //状态栏
    toolBar:ToolBar{
        id:mainToolBar
        height: 40
        Row{
            spacing: 2
            Image{
                source:  "qrc:/image/quit.png"
                width: 30
                height: 30
            }
            Image{
                source:  "qrc:/image/quit.png"
                width: 30
                height: 30
            }
            Image{
                source:  "qrc:/image/quit.png"
                width: 30
                height: 30
            }

        }
    }
    //工具栏
    statusBar: StatusBar{

        Text {
            id: name
            text: qsTr("text")
        }
    }
}
