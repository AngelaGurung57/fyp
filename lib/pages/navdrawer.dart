import 'package:flutter/material.dart';
import 'package:padhne_sathi/pages/dashboard.dart';
import 'package:padhne_sathi/pages/profile.dart';
import 'package:padhne_sathi/pages/settings.dart';

class NavDrawer extends StatefulWidget {
  @override
  _NavDrawerState createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.dashboard),
              title: Text("Dashboard"),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_) => DashBoard()));
              },
            ),

            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_) => Profile()));
              },
            ),

            ListTile(
              leading: Icon(Icons.book),
              title: Text("My Books"),
              onTap: (){

              },
            ),

            ListTile(
              leading: Icon(Icons.edit),
              title: Text("Edit Profile"),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_) => Settings()));
              },
            ),

            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
              onTap: (){

              },
            ),

          ],
        ),
      ),
    );
  }
}
