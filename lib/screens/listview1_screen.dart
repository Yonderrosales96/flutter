import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {

  const ListScreen({Key? key}) : super(key: key);

  final options = const['Megaman', 'Metal Gear','Super smash','Final fantasy'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView 1"),
      ),
      body: ListView(
        children: options
            .map((game) => ListTile(
                  title: Text(game),
                  trailing: Icon(Icons.arrow_forward_ios_outlined),
                ))
            .toList(),
      ),
    );
  }
}