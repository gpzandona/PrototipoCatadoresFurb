import 'package:flutter/material.dart';

class ConfigView extends StatelessWidget {
  const ConfigView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ConfigView'),
        ),
        body: const Center(
          child: Text('ConfigView'),
        ),
      ),
    );
  }
}