import QtQuick 2.12
import QtQuick.Controls 2.12

TextField {
  id: passwordField
  focus: true
  selectByMouse: true
  placeholderText: "password"
  echoMode: TextInput.Password
  passwordCharacter: "•"
  passwordMaskDelay: 1000
  selectionColor: config.green
  renderType: Text.NativeRendering
  font.family: config.Font
  font.pointSize: config.FontSize
  font.bold: true
  color: config.text
  horizontalAlignment: TextInput.AlignHCenter
  background: Rectangle {
    id: passFieldBackground
    radius: 3
    color: config.lightbase
  }
  states: [
    State {
      name: "focused"
      when: passwordField.activeFocus
      PropertyChanges {
        target: passFieldBackground
        color: config.lightbase
      }
    },
    State {
      name: "hovered"
      when: passwordField.hovered
      PropertyChanges {
        target: passFieldBackground
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
