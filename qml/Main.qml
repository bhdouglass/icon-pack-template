import QtQuick 2.4
import QtQuick.Layouts 1.1
import Ubuntu.Components 1.3
import Qt.labs.folderlistmodel 2.1

MainView {
    id: root
    objectName: 'mainView'
    applicationName: 'icon-pack-template.bhdouglass'
    automaticOrientation: true

    width: units.gu(45)
    height: units.gu(75)

    Page {
        title: i18n.tr('Icon Pack Template')
        anchors.fill: parent

        FolderListModel {
            id: icons

            folder: '../icons'
            nameFilters: ['*.png', '*.svg']
        }

        header: PageHeader {
            id: header
            title: parent.title
        }

        Flickable {
            id: flickable

            anchors {
                top: header.bottom
                left: parent.left
                right: parent.right
                bottom: parent.bottom
            }

            clip: true
            contentHeight: contentColumn.height + units.gu(4)

            ColumnLayout {
                id: contentColumn
                anchors {
                    left: parent.left;
                    top: parent.top;
                    right: parent.right;
                    topMargin: units.gu(1)
                }

                Label {
                    Layout.alignment: Qt.AlignVCenter | Qt.AlignHCenter

                    text: i18n.tr('Choose this icon pack in Falcon to use these app icons')
                }

                Button {
                    Layout.alignment: Qt.AlignHCenter

                    text: i18n.tr('Launch Falcon')
                    onClicked: Qt.openUrlExternally('scope://falcon.bhdouglass_falcon')
                }

                Button {
                    Layout.alignment: Qt.AlignHCenter

                    text: i18n.tr('Download Falcon')
                    onClicked: Qt.openUrlExternally('https://open.uappexplorer.com/app/falcon.bhdouglass')
                }

                GridLayout {
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    Layout.alignment: Qt.AlignHCenter

                    columns: parseInt(parent.width / units.gu(10)) - 1

                    Repeater {
                        model: icons

                        delegate: UbuntuShape {
                            visible: fileName != 'icon-pack-license' && fileName != 'icon-pack.json'

                            Layout.preferredWidth: units.gu(10)
                            Layout.preferredHeight: units.gu(10)
                            Layout.alignment: Qt.AlignVCenter | Qt.AlignHCenter

                            sourceFillMode: UbuntuShape.PreserveAspectCrop
                            source: Image {
                                source: Qt.resolvedUrl('../icons/' + fileName)
                                sourceSize.width: 256
                                sourceSize.height: 256
                            }
                        }
                    }
                }
            }
        }
    }

}
