import 'package:flutter/material.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {

    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);

    return Column(
      children: [
        Container(
          width: mediaQuery.width,
          height: mediaQuery.height * 0.22,
          color: theme.primaryColor,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 70),
          child: Text(
            "Settings ",
            style: theme.textTheme.titleLarge,
          ),
        ),
      ],
    );

  }
}
