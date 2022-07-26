import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/drawer.dart';

class Homepage extends StatelessWidget {
  final int days = 30;
  final String name = "Ritwik";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Catalog App")),
      body: Center(
        child: Container(
          child: Text("My flutter app $days by $name"),
        ),
      ), 
      drawer: MyDrawer(),
    );
  }
}
