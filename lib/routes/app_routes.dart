import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';



class AppRoutes {

  static const initialRoute = '/home';

  static final menuOptions = <MenuOption> [
    MenuOption(route: '/home', icon: Icons.home_rounded, name: 'Home Screen', screen: const HomeScreen()),
    MenuOption(route: '/listview1', icon: Icons.list, name: 'List view 1', screen: const ListScreen()),
    MenuOption(route: '/listview2', icon: Icons.list_sharp, name: 'listview 2', screen: const ListScreen2()),
    MenuOption(route: '/alertscreen', icon: Icons.add_alert, name: 'Alertas', screen: const AlertScreen()),
    MenuOption(route: '/cardscreen', icon: Icons.card_giftcard, name: 'tarjetas', screen: const CardScreen()),
    MenuOption(route: '/avatarscreen', icon: Icons.supervised_user_circle, name: 'AvatarScreen', screen: const AvatarScreen())

  ];

  static Map<String, Widget Function(BuildContext)> getRoutes() {
    Map<String, Widget Function(BuildContext)> rutas = {};

    for (final option in menuOptions) {
      //rutas.addAll({option.name : (BuildContext context) => option.screen});
      rutas.putIfAbsent(option.route, () => (BuildContext context) => option.screen);
    }


    return rutas;
  }

  static Route<dynamic> generatorDynamic ( RouteSettings settings) {
    print(settings);
    return MaterialPageRoute(builder: (context) => const HomeScreen());
  }


}