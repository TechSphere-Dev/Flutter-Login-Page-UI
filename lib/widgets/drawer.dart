import 'package:flutter/material.dart';
import 'package:flutter_course/Login.dart';

class Mydrawer extends StatelessWidget {
  const Mydrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 250,
      child: Container(
        color: Colors.grey,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.blueGrey),
                margin: EdgeInsets.only(bottom: 0),
                accountName: Text('TechSphere-Dev'),
                accountEmail: Text('TechSphere@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/new.jpg'),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home_outlined),
              title: Text('Home'),
              onTap: () {
                // handle home tap
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.person_2_outlined),
              title: Text('Profile'),
              onTap: () {
                // handle profile tap
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.email_outlined),
              title: Text('Email me'),
              onTap: () {
                // handle email tap
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.exit_to_app_outlined),
              title: Text('LogOut'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
