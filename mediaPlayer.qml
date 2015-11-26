import QtQuick 2.0
import QtQuick.Controls 1.3
import QtMultimedia 5.0
import Qt.labs.folderlistmodel 2.1


Rectangle {
    width: 1023
    height: 324

    MediaPlayer {
        id: mediaPlayer
        autoPlay: true
        source : url
    }

    FolderListModel {
        id: folderListModel
        folder: musicUrl // TODO: write C++ Controller. Done
        nameFilters: [qsTr("*.mp3")]
        showDirs: false
    }

    ListView {
        id: playList
        x: 9
        y: 8
        width: 261
        height: 308
        spacing: 5
        flickDeceleration: 1000
        model: folderListModel
        delegate: Rectangle {
            x: 23
            y: 21
            width: 234
            height: 56
            gradient: Gradient {
                GradientStop {
                    position: 0
                    color: "#ffffff"
                }

                GradientStop {
                    position: 0.881
                    color: "#ae5151"
                }
            }

            Text {
                id: song
                text: model.fileName
                anchors.fill: parent
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 12
                wrapMode: Text.WordWrap
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        mediaPlayer.source = model.fileURL
                    }
                }
            }
        }
    }

    Text {
        id: text1
        x: 302
        y: 47
        width: 341
        height: 58
        text: qsTr("Now Playing")
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 25
    }

    Text {
        id: songTitle
        x: 441
        y: 125
        width: 316
        height: 53
        text: mediaPlayer.metaData.title ? mediaPlayer.metaData.title : "Unknown"
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 20
    }

    Text {
        id: songArtist
        x: 464
        y: 194
        width: 271
        height: 44
        text: mediaPlayer.metaData.author ? mediaPlayer.metaData.author : "Unknown"
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 15
    }

    Slider {
        id: sliderHorizontal1
        x: 441
        y: 262
        width: 316
        height: 22
        maximumValue: mediaPlayer.duration
        value: mediaPlayer.position
    }
}

