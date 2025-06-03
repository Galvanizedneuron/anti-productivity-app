import QtQuick
import QtQuick.Controls

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("anti_productivity_app")

    Loader {
        id: georges_mommy
        anchors.fill: parent
        source: "startPage.qml"
    }
}
