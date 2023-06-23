import 'package:flutter/material.dart';
import 'package:go/models/catalog.dart';

import '../widget/item_wideget.dart';

class Catalog extends StatefulWidget {
  const Catalog({super.key});

  @override
  State<Catalog> createState() => _CatalogState();
}

class _CatalogState extends State<Catalog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog'),
        backgroundColor: Color.fromARGB(255, 181, 84, 199),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: CatalogModel.items.length,
          itemBuilder: (context, index) {
            return ItemWidget(items: CatalogModel.items[index]);
          }),
    );
  }
}
