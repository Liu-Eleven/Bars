import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
//常见的button的类型
ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("lanlan")

    ExclusiveGroup{
        id:radioInputGroup
        Action{id:dab;text:"dab";checkable:true}
        Action{id:fm;text:"fm";checkable: true }
        Action{id:am;text:"am";checkable: true }

    }
    toolBar: ToolBar{
        width: parent.width
        Row{
            ToolButton{action:dab}
            ToolButton{action:fm}
            ToolButton{action:am}
        }

    }
    //button
    Item{
        width: 100;height: 100
        Button{
            x:50;y:50 //设置距离父容器
            text: qsTr("button")
            menu:Menu{
                MenuItem{text:qsTr("item1")}
                MenuItem{text: qsTr("item2")}
            }
        }
    }

    Grid{
        rows: 2
        //复选框 三种状态   预选中状态（这个需要启用才有）
        spacing: 5
        ExclusiveGroup{
            id:exclusive
        }
        CheckBox{
            text:qsTr("唱歌")
            //  partiallyCheckedEnabled: true//启用选中
            checkedState: Qt.PartiallyChecked//设置为预选中
            exclusiveGroup:exclusive
        }
        CheckBox{
            text:qsTr("跳舞")
            partiallyCheckedEnabled: false
            exclusiveGroup:exclusive
        }
        CheckBox{
            text:qsTr("拉拉")
            partiallyCheckedEnabled: true
            exclusiveGroup:exclusive
        }
        CheckBox{
            text:qsTr("开心")
            partiallyCheckedEnabled: true
            exclusiveGroup:exclusive
        }
    }
    //RadioButton
    Column{
        spacing: 10
        x:100
        y:100
        RadioButton{
            text: qsTr("男")
            checked: true
            exclusiveGroup: exclusive
        }
        RadioButton{
            text: qsTr("女")
            exclusiveGroup: exclusive
        }
    }
    //选择开关 Switch
    Row{
        x:200
        y:200
        Switch{checked: true
        anchors.right:switch1.left
        anchors.rightMargin: 50
        }
        Switch{checked: false
        id:switch1
        }
    }

}
