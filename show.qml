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
	    width: 1055
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
    }

    Slide {

        Image {
            id: image2
            source: "Wizard.png"
	    width: 1055
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
    }



    Slide {

        Image {
            id: image3
            source: "XFCE.png"
	    width: 1055
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
    }



    Component.onCompleted: advanceTimer.running = true
}
