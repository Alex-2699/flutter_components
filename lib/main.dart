import 'package:flutter/material.dart';

import 'package:fl_components/theme/app_theme.dart';
import 'package:fl_components/routes/app_routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: AppRoute.initialRoute,
        routes: AppRoute.getAppRoutes(),
        onGenerateRoute: AppRoute.onGenerateRoute,
        theme: AppTheme.lightTheme,
    );
  }
}
