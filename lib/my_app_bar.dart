import 'package:video01_portfolio_website/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:video01_portfolio_website/extensions.dart';

import 'l10n/app_localizations.dart';

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
    // final width=MediaQuery.of(context).size.width;
    // print(width);
    return Text(
      "Teacher's guide",
       style: context.textStyle.titleSmBold,);
  }
}
class AppMenue extends StatelessWidget {
  const AppMenue({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(AppLocalizations.of(context)!.home),
        SizedBox(width: 10,),
        Text(AppLocalizations.of(context)!.courses),
        SizedBox(width: 10,),
        Text(AppLocalizations.of(context)!.blog),
        SizedBox(width: 10,),
        Text(AppLocalizations.of(context)!.aboutMe),
        
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



