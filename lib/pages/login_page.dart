// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/login_image.png",
                fit: BoxFit.cover,
                height: 225.0,
              ),
              SizedBox(
                height: 15.0,
              ),
              Text("Welcome",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(
                height: 5.0,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter username",
                        labelText: "Username",
                      ),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter password",
                        labelText: "Password",
                      ),
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    ElevatedButton(
                        style: TextButton.styleFrom(minimumSize: Size(120, 40)),
                        onPressed: () {
                          Navigator.pushNamed(context, MyRoutes.homeRoute);
                        },
                        child: Text("Login"))
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
