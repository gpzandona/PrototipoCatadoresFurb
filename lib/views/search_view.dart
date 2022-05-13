import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('SearchView'),
        ),
        body: const Center(
          child: Text('SearchView'),
        ),
      ),
    );
  }
}