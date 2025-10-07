import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:video01_portfolio_website/extensions.dart';
import 'package:video01_portfolio_website/widgets/appbar/seo_text.dart';

import '../../constants/app_icon.dart';

class LanguageSwitch extends StatelessWidget {
  const LanguageSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(itemBuilder: (context){
      return [
        PopupMenuItem(child: PopUpLanguageSwitch(language: "English", icon: AppIcon.us)),
        PopupMenuItem(child: PopUpLanguageSwitch(language: "Sinhala", icon: AppIcon.lk)),

      ];
    },
      child: Row(
        children: [
          Icon(Icons.language,
            //color: context.colorscheme.onBackground,
          ),
          const Gap(4),
          SEOText(Localizations.localeOf(context).languageCode=='en'?'En':'Si')

        ],
      ),
    );
  }
}

class PopUpLanguageSwitch extends StatelessWidget {
  final String language;
  final String icon;
  const PopUpLanguageSwitch({super.key, required this.language, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipOval(
          child: SvgPicture.asset(
            icon,
          width :18,
          height:18,
            fit: BoxFit.cover,
          ),
        ),
        const Gap(8),
        SEOText(language),
      ],
    );
  }
}
