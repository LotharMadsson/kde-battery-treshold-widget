// main.qml
import QtQuick 2.0
import QtQuick.Layouts 1.0
import org.kde.plasma.extras 2.0 as PlasmaExtras
import org.kde.plasma.components 2.0 as PlasmaComponents
import QtQuick.Controls 1.4
// import scriptLauncher

RowLayout {

    PlasmaComponents.Slider {
        id: slider
        Layout.fillWidth: true
        minimumValue: 0.0
        maximumValue: 1.0
        value: 0.8
        stepSize: 0.1
    }
    /*
    PlasmaComponents.Label {
        id: sliderValueLabel
        Layout.minimumWidth: textMetrics.width
        text: formatText(slider.value)
        function formatText(value) {
            return i18n("%1%", Math.round(value * 100))
        }
        TextMetrics {
            id: textMetrics
            text: sliderValueLabel.formatText(slider.maximumValue)
        }
    }*/

    Button
    {
        text: "Apply"
        onClicked: scriptLauncher.launchScript()
    }

}