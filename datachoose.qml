import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
//数据选择类控件
ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("lanlan")
    //带有下拉选择框的按钮 选择了一次后无法再次展开？
    ComboBox{
        width: 200
        model: ["banana","apple","coconut"]
    }
    ComboBox{
        x:100;y:100
        width: 200
        currentIndex: 2 //当前选中那个element
        model: ListModel{
            id:cbItems
            ListElement{text:"banana";color:"Yellow"}
            ListElement{text:"apple";color:"Green"}
            ListElement{text:"coconut";color:"Brown"}

        }
        onCurrentIndexChanged:
            console.debug(cbItems.get(currentIndex).text+","+cbItems.get(currentIndex).color)
    }
}
