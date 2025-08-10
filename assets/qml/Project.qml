import QtQuick
import QtQuick.Layouts
import QtQuick.Effects

Rectangle {
    width: 500
    height: 135
    radius: 10
    gradient: Gradient {
        GradientStop { position: 0.0; color: "#181819"}
        GradientStop { position: 1.0; color: "#161619"}
    }

    RectangularShadow {
        width: parent.width
        height: parent.height
        blur: 10
        radius: parent.radius
        color: Qt.rgba(0.0, 0.0, 0.3, 1.0)
        offset: Qt.vector2d(0.2, 0.2)
        z: -2
    }

    ColumnLayout {
        anchors.fill: parent
        RowLayout {
            clip: true
            Text {
                Layout.fillWidth: true
                Layout. minimumHeight: 50
                Layout.maximumHeight: 50

                text: "[d] proj-mgmt"
                font.family: "Roboto", "Helvetica"
                font.weight: 700
                font.pixelSize: 32
                color: "#FFFFFF"
                leftPadding: 10
            }

            Rectangle {

                color: "red"
                width: 30
                height: 30
            }
        }

        Text {
            Layout.fillHeight: true

            text: "test"
        }
    }
}
