import 'package:video01_portfolio_website/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:video01_portfolio_website/extensions.dart';
import 'package:video01_portfolio_website/styles/app_size.dart';
import 'package:video01_portfolio_website/widgets/appbar/app_bar_drawar_icon.dart';

import '../../l10n/app_localizations.dart';
//
// class MyAppBar extends StatelessWidget {
//   const MyAppBar({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       scrollDirection: Axis.horizontal,
//       child: Container(
//         //color: Theme.of(context).appBarTheme.backgroundColor,
//         color: Colors.red,
//         padding:EdgeInsets.symmetric(horizontal: context.Insets.Padding) ,
//         height: context.Insets.AppbarHeight,
//         child: ConstrainedBox(
//           constraints: BoxConstraints(
//             maxWidth: Insets.maxwidth,
//           ),
//           child: Row(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               AppLogo(),
//               Spacer(),
//               AppMenue(),
//               Spacer(),
//               LanguageToggle(),
//               ThemeToggle(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.theme.appBarTheme.backgroundColor,
      padding: EdgeInsets.symmetric(horizontal: context.Insets.Padding),
      height: context.Insets.AppbarHeight,
      child: LayoutBuilder(
        builder: (context, constraints) {
          // If screen < 600px, show a hamburger menu instead
          if (context.isMobile) {
            return AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeInOut,
              color: context.theme.appBarTheme.backgroundColor, // background color
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                children: const [
                  AppLogo(),
                  Spacer(),
                  Row(
                    children: [
                      LanguageToggle(),
                      const SizedBox(width: 16.0),
                      ThemeToggle(),
                      const SizedBox(width: 16.0),
                      AppBarDrawarIcon(),// 👈 mobile-friendly
                    ],

                  ),

                ],
              ),
            );
          } else {
            return AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              color: context.theme.appBarTheme.backgroundColor,
              child: SizedBox(
                height: 60,
                width: Insets.maxwidth,
                child: Row(
                  children: const [
                    AppLogo(),
                    Spacer(),
                    LargeMenue(),
                    Spacer(),
                    LanguageToggle(),
                    ThemeToggle(),
                  ],
                ),
              ),
            );
          }
        },
      ),
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
class LargeMenue extends StatelessWidget {
  const LargeMenue({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).appBarTheme.backgroundColor,
      child: Row(
        children: [
          Text(context.texts.home),
          SizedBox(width: 10,),
          Text(context.texts.courses),
          SizedBox(width: 10,),
          Text(context.texts.blog),
          SizedBox(width: 10,),
          Text(context.texts.aboutMe),

        ],
      ),
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



