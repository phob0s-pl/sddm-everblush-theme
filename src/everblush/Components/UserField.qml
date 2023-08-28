import QtQuick 2.12
import QtQuick.Controls 2.12

TextField {
  id: userField
  height: inputHeight
  width: inputWidth
  selectByMouse: true
  echoMode: TextInput.Normal
  selectionColor: config.green
  renderType: Text.NativeRendering
  font {
    family: config.Font
    pointSize: config.FontSize
    bold: true
  }
  color: config.text
  horizontalAlignment: Text.AlignHCenter
  placeholderText: "user"
  text: userModel.lastUser
  background: Rectangle {
    id: userFieldBackground
    color: config.lightbase
    radius: 3
  }
  states: [
    State {
      name: "focused"
      when: userField.activeFocus
      PropertyChanges {
        target: userFieldBackground
        color: config.lightbase
      }
    },
    State {
      name: "hovered"
      when: userField.hovered
      PropertyChanges {
        target: userFieldBackground
        color: config.lightbase
      }
    }
  ]
  transitions: Transition {
    PropertyAnimation {
      properties: "color"
      duration: 300
    }
  }
}
