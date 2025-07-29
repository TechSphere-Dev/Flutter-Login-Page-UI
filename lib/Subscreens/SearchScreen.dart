import 'package:flutter/material.dart';
class seachScreen extends StatefulWidget {
  const seachScreen({super.key});

  @override
  State<seachScreen> createState() => _seachScreenState();
}

class _seachScreenState extends State<seachScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.lightGreen,
        child: Text('This Search Screen' , style: TextStyle(fontSize: 30),),
      ),
    );
  }
}
