import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ListScreen2 extends StatelessWidget {

  const ListScreen2({Key? key}) : super(key: key);

  final options = const['Megaman', 'Metal Gear','Super smash','Final fantasy'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView 1")
      ),
      body: ListView.separated(
        itemBuilder: (_, index) {
          return ListTile(
              title: Text(options[index]),
              trailing: const Icon(Icons.arrow_forward_ios_outlined,color: AppTheme.primary),
              leading: const Icon(Icons.access_time_rounded,color: AppTheme.primary),
              onTap: () {
                final game = options[index];
                print(game);
              }
          );
        },
        separatorBuilder: (_, __) => const Divider(),
        itemCount: options.length,
      ),
    );
  }
}