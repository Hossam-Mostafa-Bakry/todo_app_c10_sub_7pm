import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_c10_sun_10pm/core/config/application_theme_manager.dart';
import 'package:todo_c10_sun_10pm/features/layout_view.dart';
import 'package:todo_c10_sun_10pm/features/login/pages/login_view.dart';
import 'package:todo_c10_sun_10pm/features/register/pages/register_view.dart';
import 'package:todo_c10_sun_10pm/features/settings_provider.dart';
import 'package:todo_c10_sun_10pm/features/splash/pages/splash_view.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => SettingsProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var vm = Provider.of<SettingsProvider>(context);
    return MaterialApp(
      title: 'TODO App',
      debugShowCheckedModeBanner: false,
      theme: ApplicationThemeManager.lightThemeData,
      darkTheme: ApplicationThemeManager.darkThemeData,
      themeMode: vm.currentThemeMode,
      initialRoute: SplashView.routName,
      routes: {
        SplashView.routName: (context) => const SplashView(),
        LoginView.routeName: (context) =>  LoginView(),
        RegisterView.routeName: (context) =>  RegisterView(),
        LayoutView.routeName: (context) => const LayoutView(),
      },

    );
  }
}
