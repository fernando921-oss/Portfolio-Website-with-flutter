import 'package:flutter/material.dart';
import 'package:video01_portfolio_website/app_text_styles.dart';
import 'package:video01_portfolio_website/l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

enum FormFactorType{
  mobile,
  tablet,
  desktop,
}

extension styledContext on BuildContext{

    MediaQueryData get mq=>MediaQuery.of(this);
    double get width=>mq.size.width;
    double get height=>mq.size.height;

    FormFactorType get formFactor{
          if(width<600) return FormFactorType.mobile;
          else switch (width) {
            case <900:
             return FormFactorType.tablet;
            default:
             return FormFactorType.desktop;
          }


    }

    bool get isMobile=>formFactor==FormFactorType.mobile;
    bool get isDesktop=>formFactor==FormFactorType.desktop;
    bool get isTablet=>formFactor==FormFactorType.tablet;



    AppTextStyles get textStyle{
        switch(formFactor){
          case FormFactorType.mobile:
          case FormFactorType.tablet:
            return SmallTextStyles();
          case FormFactorType.desktop:
            return LargeTextStyles();
        }

    }
    AppLocalizations get texts=>AppLocalizations.of(this)??lookupAppLocalizations(Locale("en"));


}

