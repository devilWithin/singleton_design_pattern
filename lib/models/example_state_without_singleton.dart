import 'package:flutter/material.dart';
import 'package:singleton_design_pattern/models/base_state.dart';

class ExampleStateWithoutSingleton extends StateBase {
  ExampleStateWithoutSingleton() {
    initialText =
        "A new 'ExampleStateWithoutSingleton' instance has been created";
    stateText = initialText;
    debugPrint(stateText);
  }
}
