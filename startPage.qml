import QtQuick
import QtQuick.Controls


Item {
    Image {
        id: logo
        source: "qrc:/logo.jpg"
        anchors.centerIn: parent
    }


    Column {
        id: column
        width: 125
        height: 75
        anchors.centerIn: parent

        Button{
            id: button
            width: 150
            text: "What shall I do today?"
            onClicked: georges_mommy.source = "homePage.qml"
        }
    }

}
