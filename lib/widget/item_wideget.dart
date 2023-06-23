import 'package:flutter/material.dart';
import 'package:go/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item items;

  const ItemWidget({super.key, required this.items});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shadowColor: Colors.black,
        child: ListTile(
          onTap: () {
            
          },
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.network(
              items.image,
            ),
          ),
          title: Text(
            items.name,
          ),
          subtitle: Text(items.desc),
          trailing: Text('\$${items.price}',
            textScaleFactor: 1.3,
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 220, 110, 240)),
          ),
        ),
      ),
    );
  }
}
