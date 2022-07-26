// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text(
                  "Ritwik Shekhar",
                  style: TextStyle(color: Colors.white),
                ),
                accountEmail: Text(
                  "ritwik1007@gmail.com",
                  style: TextStyle(color: Colors.white),
                ),
       
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home,
              color:Colors.white),
              title: Text("Home",
              textScaleFactor: 1.2,
              style:TextStyle(color: Colors.white)),
            ),
              
              ListTile(
              leading: Icon(CupertinoIcons.profile_circled,
              color:Colors.white),
              title: Text("Profile",
              textScaleFactor: 1.2,
              style:TextStyle(color: Colors.white)),
            ),

             ListTile(
              leading: Icon(CupertinoIcons.mail,
              color:Colors.white),
              title: Text("Mail",
              textScaleFactor: 1.2,
              style:TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
