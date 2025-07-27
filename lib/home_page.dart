import 'package:flutter/material.dart';
import 'package:flutter_course/widgets/drawer.dart';
class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog App'),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
          drawer: Mydrawer(),
    );
  }
}
