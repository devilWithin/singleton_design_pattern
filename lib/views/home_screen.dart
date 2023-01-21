import 'package:flutter/material.dart';
import 'package:singleton_design_pattern/views/singleton_example.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const SingletonExample(),
              ),
            );
          },
          child: const Card(
            elevation: 5,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Go to Singleton Example Screen'),
            ),
          ),
        ),
      ),
    );
  }
}
