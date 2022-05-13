
import 'package:flutter/material.dart';
import 'package:teste_flutter/views/home_view.dart';
import 'package:teste_flutter/views/login_view.dart';
import 'package:teste_flutter/views/map_view.dart';
import 'package:teste_flutter/views/search_view.dart';
import 'package:teste_flutter/views/notification_view.dart';
import 'package:teste_flutter/views/configuration_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of our application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demos',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/login',
      routes: {
        '/': (context) => const MyHomePage(title: 'Home Page'),
        '/login': (context) => const LoginView(),
        '/map': (context) => const MapView(),
        '/search': (context) => const SearchView(),
        '/notification': (context) => const NotificationView(),
        '/config': (context) => const ConfigView(),
      },
    );
  }
}
