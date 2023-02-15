import QtQuick 2.0;
import calamares.slideshow 1.0;

Presentation
{
    id: presentation

    Timer {
        id: advanceTimer
        interval: 8000
        running: true
        repeat: true
        onTriggered: presentation.goToNextSlide()
    }
    
    Slide {
        Image {
            id: image1
            source: "Base.png"
	    width: 500px
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
	    x: -100
            y: 0
        }
        Text {
            anchors.horizontalCenter: background.horizontalCenter
            anchors.top: background.bottom
            text: "Ubuntu is <br/>"+
                  "about to get <br/>"+
                  "rolling."
            wrapMode: Text.WordWrap
            width: presentation.width
            horizontalAlignment: Text.Left
	    x: 100
            y: 0

        }
    }

    Slide {

        Image {
            id: image2
            source: "Wizard.png"
	    width: 500px
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
	    x: 100
            y: 0
        }
        Text {
            anchors.horizontalCenter: background.horizontalCenter
            anchors.top: background.bottom
            text: "Featuring our<br/>"+
                  "own elegant new<br/>"+
                  "setup wizard."
            wrapMode: Text.WordWrap
            width: presentation.width
            horizontalAlignment: Text.Left
	    x: -100
            y: 0

        }
    }



    Slide {

        Image {
            id: image3
            source: "XFCE.png"
	    width: 500px
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
	    x: 100
            y: 0
        }
        Text {
            anchors.horizontalCenter: background.horizontalCenter
            anchors.top: background.bottom
            text: "With XFCE, <br/>"+
                  "your desktop is<br/>"+
                  "truly yours."
            wrapMode: Text.WordWrap
            width: presentation.width
            horizontalAlignment: Text.Left
	    x: -100
            y: 0

        }
    }



    Component.onCompleted: advanceTimer.running = true
}
