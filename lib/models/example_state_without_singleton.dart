import 'package:flutter/material.dart';
import 'package:singleton_design_pattern/models/base_state.dart';

class ExampleStateWithoutSingleton extends StateBase {
  ExampleStateWithoutSingleton() {
    initalText =
        "A new 'ExampleStateWithoutSingleton' instance has been created";
    stateText = initalText;
    debugPrint(stateText);
  }
}
