import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardTypeOne extends StatelessWidget {
  const CustomCardTypeOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            title: Text('Soy un titulo'),
            leading: Icon(Icons.home,color: AppTheme.primary),
            subtitle: Text('lorem ipsum hola hadfdfjdnfdjfhdfe kjenjfikejf'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {},
                    child: const Text('Ok')
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text('Cancel')
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
