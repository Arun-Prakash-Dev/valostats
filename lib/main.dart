import 'package:flutter/material.dart';
import 'package:valostats/Pages/AgentsPage.dart';
import 'package:valostats/Pages/Tabs.dart';
import 'package:valostats/Pages/loginpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/home': (context) => const Tabs(),
      },
      theme: ThemeData(
        //brightness: Brightness.dark,
        primarySwatch: Colors.red,
        fontFamily: 'Wallpoet',
        inputDecorationTheme: const InputDecorationTheme(
            filled: true,
            fillColor: Color(0xff0E192E),
            hintStyle: TextStyle(color: Colors.white10)),
        scaffoldBackgroundColor: Color(0xff031220),

        //primaryColor: Colors.red,
      ),
      home: const LoginPage(),
    );
  }
}
