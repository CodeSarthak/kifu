import 'package:flutter/material.dart';
import 'package:kifu/models/data.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key? key, required this.item})
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(item.name),
        subtitle: Text("Age:  ${item.age}"),
        trailing: Text(
          "Donations: ${item.donation_count}",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
