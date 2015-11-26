import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Window 2.2
import QtQuick.Dialogs 1.2

ApplicationWindow {
    id: applicationWindow1
    title: qsTr("HMI Sample")
    width: 1024
    height: 480
    visible: true

    Loader {
        id: contentLoader
        x: 1
        y: 0
        width: 1023
        height: 324
    }

    Rectangle {
        id: menuBar
        x: 1
        y: 330
        width: 1023
        height: 150
        color: "#000000"

        Rectangle {
            id: tuner
            x: 27
            y: 0
            width: 163
            height: 142
            gradient: Gradient {
                GradientStop {
                    position: 0.439
                    color: "#33cccc"
                }

                GradientStop {
                    position: 1
                    color: "#000000"
                }
            }

            Text {
                id: text1
                text: qsTr("Tuner")
                anchors.fill: parent
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 30

                MouseArea {
                    id: mouseArea1
                    anchors.fill: parent
                    onClicked: {
                        contentLoader.source = "tuner.qml"
                    }
                }
            }
        }

        Rectangle {
            id: music
            x: 293
            y: 0
            width: 163
            height: 142
            gradient: Gradient {
                GradientStop {
                    position: 0.439
                    color: "#4eb8bf"
                }

                GradientStop {
                    position: 1
                    color: "#000000"
                }
            }

            Text {
                id: text2
                text: qsTr("Music")
                anchors.fill: parent
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 30

                MouseArea {
                    id: mouseArea2
                    anchors.fill: parent
                    onClicked: {
                        contentLoader.source = "mediaPlayer.qml"
                    }
                }
            }
        }

        Rectangle {
            id: navigation
            x: 564
            y: 0
            width: 163
            height: 142
            gradient: Gradient {
                GradientStop {
                    position: 0.439
                    color: "#4db9c0"
                }

                GradientStop {
                    position: 1
                    color: "#000000"
                }
            }

            Text {
                id: text3
                text: qsTr("Navigation")
                anchors.fill: parent
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 30

                MouseArea {
                    id: mouseArea3
                    anchors.fill: parent
                    onClicked: {
                        contentLoader.source = "nav.qml"
                    }
                }
            }
        }

        Rectangle {
            id: phone
            x: 831
            y: 0
            width: 163
            height: 142
            gradient: Gradient {
                GradientStop {
                    position: 0.439
                    color: "#49aebb"
                }

                GradientStop {
                    position: 1
                    color: "#000000"
                }
            }

            Text {
                id: text4
                text: qsTr("Phone")
                anchors.fill: parent
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 30

                MouseArea {
                    id: mouseArea4
                    anchors.fill: parent
                }
            }
        }
    }
}
