import 'package:flutter/material.dart';

class MapView extends StatelessWidget {
  const MapView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('MapView'),
        ),
        body: const Center(
          child: Text('MapView'),
        ),
      ),
    );
  }
}