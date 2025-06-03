import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Item {
    //this upcoming part is mostly vibe coded so watch your step ;)
    ColumnLayout {
            anchors.fill: parent
            anchors.margins: 20
            spacing: 30
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

            // Spacer to push content down a bit
            Item { Layout.fillHeight: true }

            // Main Random Item Button
            Button {
                id: randomItem
                text: "Get an activity!"
                Layout.alignment: Qt.AlignHCenter
                font.pixelSize: 24
                width: parent.width * 0.8
                height: 60
                onClicked: {
                    // trigger random item logic
                }
            }

            // View/Add Items Button
            Button {
                text: "View / Add activities"
                Layout.alignment: Qt.AlignHCenter
                font.pixelSize: 18
                width: parent.width * 0.6
                height: 40
                onClicked: {
                    // go to item management screen
                }
            }

            // Spacer to push everything up from the bottom
            Item { Layout.fillHeight: true }
        }

        // Small settings button in top-right
        Button {
            id: settingsButton
            text: "⚙️"
            anchors.top: parent.top
            anchors.right: parent.right
            anchors.topMargin: 10
            anchors.rightMargin: 10
            width: 40
            height: 40
            font.pixelSize: 20
            onClicked: {
                // open settings view
            }
        }

        // A back button to get back to the startPage
        Button{
            id: backButton
            text: "<--"
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.topMargin: 10
            anchors.leftMargin: 10
            width: 40
            height: 40
            font.pixelSize: 20
            onClicked: georges_mommy.source = "startPage.qml"
        }

}
