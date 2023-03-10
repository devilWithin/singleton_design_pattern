import 'package:flutter/material.dart';
import 'package:singleton_design_pattern/models/base_state.dart';

class ExampleState extends StateBase {
  static final ExampleState _instance = ExampleState._internal();

  factory ExampleState() {
    return _instance;
  }

  ExampleState._internal() {
    initialText = "A new 'ExampleState' instance has been created";
    stateText = initialText;
    debugPrint(stateText);
  }
}
