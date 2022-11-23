import 'package:flutter/material.dart';
import 'package:flutter_basics/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({super.key, required this.item}) : assert(item != null);

  final Item item;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: Border(),
      child: ListTile(
        onTap: () {
          print("${item.name}");
        },
        leading:
            SizedBox(height: 50, width: 50, child: Image.network(item.image)),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text("\$${item.price}",
            textScaleFactor: 1.5,
            style: const TextStyle(
                color: Colors.blue, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
