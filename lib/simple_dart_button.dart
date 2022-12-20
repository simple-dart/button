import 'dart:html';

import 'package:simple_dart_ui_core/simple_dart_ui_core.dart';

class Button extends Component with MixinActive, MixinDisable {
  Button() : super('Button') {
    element.style
      ..alignItems = 'center'
      ..justifyContent = 'center';
  }

  Stream<MouseEvent> get onClick => element.onClick.where((event) => !disabled);

  @override
  Element element = DivElement();

  set caption(String caption) {
    element.text = caption;
  }

  String get caption => element.text ?? '';

  set tooltip(String tooltip) {
    element.title = tooltip;
  }

  String get tooltip => element.title ?? '';
}
