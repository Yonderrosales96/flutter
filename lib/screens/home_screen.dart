import 'package:fl_components/routes/app_routes.dart';
import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Componentes en flutter")
      ),
      body:
      ListView.separated(
          itemBuilder: (context, index) =>  ListTile(
            title: Text(AppRoutes.menuOptions.elementAt(index).name),
            leading: Icon(AppRoutes.menuOptions.elementAt(index).icon, color: AppTheme.primary),
            onTap: () {
                Navigator.pushNamed(context, AppRoutes.menuOptions.elementAt(index).route);
            },
          ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: AppRoutes.menuOptions.length
      ),
    );
  }

}