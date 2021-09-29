import QtQuick 2.12
import QtQuick.Controls 2.5

ApplicationWindow {
	
	visible: true
	width: 500
	height: 700

	Rectangle {
	width: 400
	height: 400
	color: "lightgreen"

	Text {

		text: "Wellcome first app with QML"
		anchors.centerIn: parent
	}

	Rectangle{
		width: 200
		height: 200
		color: "red"
		Text {
			text: "Otro cuadro"
			anchors.centerIn: parent
		}



	}
}}