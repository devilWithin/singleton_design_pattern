import 'package:flutter/material.dart';

abstract class StateBase {
  @protected
  String? initialText;
  @protected
  String? stateText;

  String get currentText => stateText!;

  void setStateText(String text) {
    stateText = text;
  }

  void reset() {
    stateText = initialText;
  }
}
