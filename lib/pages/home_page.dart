import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert'; //gives json decoder encoder
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/widgets/drawer.dart';
import 'package:flutter_catalog/widgets/item_widget.dart';

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final int days = 30;

  final String name = "Ritwik";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final bitmalljson =
        await rootBundle.loadString("assets/files/bitmall.json");
    final decodedData = jsonDecode(bitmalljson);
    var productsData = decodedData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bit Mall")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (CatalogModel.items !=null && CatalogModel.items.isNotEmpty)?  ListView.builder(
          itemCount: CatalogModel.items.length,
          itemBuilder: (context, index) =>
            ItemWidget(item: CatalogModel.items[index]),
        ):Center(child: CircularProgressIndicator(),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
