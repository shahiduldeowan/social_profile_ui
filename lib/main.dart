import 'package:flutter/material.dart';
import 'package:social_profile/presentations/router/app_router.dart';
import 'package:social_profile/presentations/themes/app_colors.dart';

void main() => runApp(MyApp(route: AppRouter()));

class MyApp extends StatelessWidget {
  final AppRouter route;
  const MyApp({Key? key, required this.route}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.sBackgroundColor,
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: route.onGenerateRoute,
    );
  }
}
