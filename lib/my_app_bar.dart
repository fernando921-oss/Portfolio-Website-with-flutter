import 'package:video01_portfolio_website/app_text_styles.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AppLogo(),
        Spacer(),
        AppMenue(),
        Spacer(),
        LanguageToggle(),
        ThemeToggle(),
      ],
    );
  }
}

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Text("Teacher's guide", style: LargeTextStyles().titleLgBold,);
  }
}
class AppMenue extends StatelessWidget {
  const AppMenue({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Home"),
        Text("Courses"),
        Text("Blog"),
        Text("About Me"),
        
      ],
    );
  }
}

class ThemeToggle extends StatelessWidget {
  const ThemeToggle({super.key});

  @override
  Widget build(BuildContext context) {
    return Switch(value: false, onChanged: (value){});
  }
}

class LanguageToggle extends StatelessWidget {
  const LanguageToggle({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(itemBuilder: (context){
      return [
        PopupMenuItem(child: Text("English")),
        PopupMenuItem(child: Text("Sinhala")),

      ];
    });
  }
}



