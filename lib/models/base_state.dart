import 'package:flutter/material.dart';

abstract class StateBase {
  @protected
  String? initalText;
  @protected
  String? stateText;

  String get currentText => stateText!;

  void setStateText(String text) {
    stateText = text;
  }

  void reset() {
    stateText = initalText;
  }
}
