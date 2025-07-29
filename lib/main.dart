import 'package:flutter/material.dart';
import 'package:flutter_course/Screens/Login.dart';
import 'package:flutter_course/widgets/themes.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Mytheme.lightTheme(context),
      debugShowCheckedModeBanner: false,
      home: LoginScreen()
    );
        }
}
