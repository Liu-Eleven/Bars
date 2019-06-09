import QtQuick 2.2
import QtQuick.Window 2.2
import QtQuick.Controls 1.4

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("lanlan")
    Window {
        id:dialog
        title:"dialog"
        width: 200
        height: 200
        flags: Qt.Dialog//自定义对话框

        Item{

            Text{
                anchors.leftMargin: 100
                anchors.left: parent.left //需要指定在谁的左边
                width: 200
                color:"#ff0000"
                wrapMode: Text.WordWrap //在文字边界进行换行
                text:"today ,someone say very fat behind so i hear i sad and cry but i think very happy and i hava love i should  not because his words cry  "
            }
        }

    }
    Button{
        text: qsTr("open")
        anchors.centerIn: parent
        onClicked: {dialog.show()}
    }
}
