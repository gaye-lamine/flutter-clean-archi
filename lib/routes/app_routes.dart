import 'package:flutter/material.dart';
import 'package:users_test/presentation/screens/user_screen.dart';

class AppRoutes {
  static const home = '/';

  static Route<dynamic> generate(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => const UserScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text('404 - Page non trouvée')),
          ),
        );
    }
  }
}
