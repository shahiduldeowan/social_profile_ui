import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social_profile/presentations/providers/profile/profile_provider.dart';
import 'package:social_profile/presentations/views/home/welcome_screen.dart';
import 'package:social_profile/presentations/views/profile/profile_screen.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case WelcomeScreen.routeName:
        return MaterialPageRoute(
          builder: (_) => const WelcomeScreen(),
        );
      case ProfileScreen.routeName:
        return MaterialPageRoute(
          builder: (_) => ChangeNotifierProvider(
            create: (_) => ProfileProvider(),
            child: const ProfileScreen(),
          ),
        );
      default:
        return null;
    }
  }
}
