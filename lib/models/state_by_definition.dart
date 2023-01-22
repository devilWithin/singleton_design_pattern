import 'package:flutter/material.dart';
import 'package:singleton_design_pattern/models/base_state.dart';

class StateByDefinition extends StateBase {
  static StateByDefinition? _instance;

  StateByDefinition._internal() {
    initialText = "A new 'StateByDefinition' instance has been created";
    stateText = initialText;
    debugPrint(stateText);
  }

  static StateByDefinition getState() {
    _instance ??= StateByDefinition._internal();
    return _instance!;
  }
}
