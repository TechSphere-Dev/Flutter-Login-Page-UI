import 'package:flutter/material.dart';
class myapp extends StatefulWidget {
  const myapp({super.key});

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Catalog App'),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      drawer: Drawer(width: 250,),
    );
  }
}
