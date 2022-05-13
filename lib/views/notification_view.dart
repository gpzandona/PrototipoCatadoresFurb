import 'package:flutter/material.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('NotificationView'),
        ),
        body: const Center(
          child: Text('NotificationView'),
        ),
      ),
    );
  }
}