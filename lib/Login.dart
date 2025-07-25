import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  final _formKey = GlobalKey<FormState>();
  bool _obscureText = true;

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String? _emailError;
  String? _passwordError;

  // Email validation
  void _validateEmail() {
    String value = _emailController.text.trim();
    if (value.isEmpty) {
      setState(() {
        _emailError = 'Email is required';
      });
    } else {
      final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
      if (!emailRegex.hasMatch(value)) {
        setState(() {
          _emailError = 'Enter valid Email';
        });
      } else {
        setState(() {
          _emailError = null;
        });
      }
    }
  }

  // Password validation
  void _validatePassword() {
    String value = _passwordController.text.trim();

    if (value.isEmpty) {
      setState(() {
        _passwordError = 'Password is required';
      });
    } else if (value.length < 8) {
      setState(() {
        _passwordError = 'Password must be at least 8 characters';
      });
    } else if (!RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(value)) {
      setState(() {
        _passwordError = 'Password must have at least one special character';
      });
    } else if (!RegExp(r'[A-Z]').hasMatch(value)) {
      setState(() {
        _passwordError = 'Password must have at least one uppercase letter';
      });
    } else {
      setState(() {
        _passwordError = null;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Form(
          key: _formKey,
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

              // Email Field
              TextFormField(
                controller: _emailController,
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
                onChanged: (value) => _validateEmail(),
              ),
              if (_emailError != null)
                Padding(
                  padding: const EdgeInsets.only(top: 5, left: 8),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      _emailError!,
                      style: TextStyle(color: Colors.red, fontSize: 12),
                    ),
                  ),
                ),

              SizedBox(height: 15),

              // Password Field
              TextFormField(
                controller: _passwordController,
                obscureText: _obscureText,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscureText ? Icons.visibility_off : Icons.visibility,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                  ),
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
                onChanged: (value) => _validatePassword(),
              ),
              if (_passwordError != null)
                Padding(
                  padding: const EdgeInsets.only(top: 5, left: 8),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      _passwordError!,
                      style: TextStyle(color: Colors.red, fontSize: 12),
                    ),
                  ),
                ),

              SizedBox(height: 10),

              // Login Button
              ElevatedButton(
                onPressed: () {
                  _validateEmail();
                  _validatePassword();
                  if (_emailError == null && _passwordError == null) {
                    print("Form is valid. Proceed to login.");
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amberAccent,
                  foregroundColor: Colors.black87,
                  padding: EdgeInsets.only(left: 100, right: 100),
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

              SizedBox(height: 8),

              Text(
                'TechSphere-Dev',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w900,
                    color: Colors.black38),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
