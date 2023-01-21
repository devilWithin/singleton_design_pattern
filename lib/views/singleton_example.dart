import 'package:flutter/material.dart';
import 'package:singleton_design_pattern/models/example_state.dart';
import 'package:singleton_design_pattern/models/example_state_without_singleton.dart';
import 'package:singleton_design_pattern/models/state_by_definition.dart';

import '../models/base_state.dart';

class SingletonExample extends StatefulWidget {
  const SingletonExample({
    super.key,
  });

  @override
  State<SingletonExample> createState() => _SingletonExampleState();
}

class _SingletonExampleState extends State<SingletonExample> {
  final List<StateBase> stateList = [
    ExampleState(),
    StateByDefinition.getState(),
    ExampleStateWithoutSingleton(),
  ];

  void _setTextValues({String text = 'Singleton'}) {
    for (var state in stateList) {
      state.setStateText(text);
    }
    setState(() {});
  }

  void reset() {
    for (var state in stateList) {
      state.reset();
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  for (var state in stateList)
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Text(state.currentText),
                    ),
                  TextButton(
                    onPressed: () {
                      _setTextValues();
                    },
                    child: const Text("Change States text to 'Singleton'"),
                  ),
                  TextButton(
                    onPressed: () {
                      reset();
                    },
                    child: const Text("Reset"),
                  ),
                  const Text(
                      "'Change states text' and go back to the previous screen then come back to this example screen to see how the singleton behaves")
                ],
              ),
            ),
          ],
        ));
  }
}
