import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_c10_sun_10pm/features/layout_view.dart';
import 'package:todo_c10_sun_10pm/features/login/pages/login_view.dart';
import 'package:todo_c10_sun_10pm/features/settings_provider.dart';

class SplashView extends StatefulWidget {
  static const String routName = "/";

  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.pushReplacementNamed(
          context,
          LayoutView.routeName,
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var vm = Provider.of<SettingsProvider>(context);

    return Scaffold(
      body: Image.asset(
        vm.isDark()
            ? "assets/images/splash_dark_background.png"
            : "assets/images/splash_background.png",
        height: mediaQuery.height,
        width: mediaQuery.width,
        fit: BoxFit.cover,
      ),
    );
  }
}
