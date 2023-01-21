import 'package:flutter/material.dart';
import 'package:singleton_design_pattern/models/base_state.dart';

class StateByDefinition extends StateBase {
  static StateByDefinition? _instance;

  StateByDefinition._internal() {
    initalText = "A new 'StateByDefinition' instance has been created";
    stateText = initalText;
    debugPrint(stateText);
  }

  static StateByDefinition getState() {
    _instance ??= StateByDefinition._internal();
    return _instance!;
  }
}
