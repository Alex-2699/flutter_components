import 'package:flutter/material.dart';

import 'package:fl_components/routes/app_routes.dart';
import 'package:fl_components/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final options = AppRoute.menuOptions;

    return Scaffold(
        appBar: AppBar(
          title: const Text('Componentes en flutter'),
          elevation: 0,
        ),
        body: ListView.separated(
          itemCount: options.length,
          itemBuilder: (context, i) => ListTile(
            leading: Icon(
              options[i].icon,
              color: AppTheme.primary,
            ),
            title: Text(options[i].name),
            onTap: () {
              Navigator.pushNamed(context, options[i].route);
            },
          ),
          separatorBuilder: (_, __) => const Divider(height: 1),
        ));
  }
}
