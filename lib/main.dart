import 'package:flutter/material.dart';
import 'package:tomisha_test/index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    final ThemeData theme = ThemeData.light().copyWith(
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.white), // Set your desired background color
          textStyle: MaterialStateProperty.all(TextStyle(color: Colors.white)), // Set your desired text color
          // Add more customizations as needed
        ),
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme,
      home: const Index(title: ''),
    );
  }
}
