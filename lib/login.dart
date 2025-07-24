import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: 10),
            Center(
              child: Image.asset(
                'assets/images/g.jpg',
                height: 200,
                width: 300,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Welcome',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 40),
            TextFormField(
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.email_outlined, color: Colors.grey),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Colors.black, width: 1.5),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                hintText: 'Enter Email',
                labelText: 'Email',
              ),
            ),
            SizedBox(height: 15),
            TextFormField(
              obscureText: _obscureText,
              decoration: InputDecoration(
                suffixIcon: IconButton(icon: _obscureText? Icon(Icons.visibility_off): Icon( Icons.visibility),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Colors.black, width: 1.5),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                hintText: 'Enter Password',
                labelText: 'Password',
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amberAccent,
                foregroundColor: Colors.black87,
                padding: EdgeInsets.only(left: 150, right: 150),
              ),
              child: Text('Login'),
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Forgot Password',
                  style: TextStyle(color: Colors.blueAccent),
                ),
              ),
            ),
            SizedBox(height: 120),
            OutlinedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.only(left: 100, right: 100),
              ),
              child: Text('Create Account'),
            ),
            SizedBox(height: 25,),
            Text(
              'TechSphere-Dev',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w900, color: Colors.black38),
            ),
          ],
        ),
      ),
    );
  }
}
