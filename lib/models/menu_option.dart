import 'package:flutter/cupertino.dart' show IconData, Widget;

class MenuOption {
  final String route, name;
  final IconData icon;
  final Widget screen;

  MenuOption({
    required this.route, 
    required this.name, 
    required this.icon, 
    required this.screen
  });
}
