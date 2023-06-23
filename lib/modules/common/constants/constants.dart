import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Theme {
    static final theme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: const Color.fromRGBO(38, 45, 61, 1),
    fontFamily: 'clashDisplayRegular',
    scaffoldBackgroundColor: const Color(0xfff),
    dividerColor: ColorPalette.white,
    dividerTheme: const DividerThemeData(
      color: ColorPalette.white,
      thickness: 1,
    ),
    inputDecorationTheme: const InputDecorationTheme(
      contentPadding: EdgeInsets.all(12),
      border: OutlineInputBorder(
        borderSide: BorderSide.none,
      ),
    ),
    appBarTheme: AppBarTheme(
      elevation: 0,
      backgroundColor: ColorPalette.white,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: ColorPalette.white,
        statusBarIconBrightness: Brightness.dark, //<-- For Android SEE HERE (dark icons)
        statusBarBrightness: Brightness.dark, //<-- For iOS SEE HERE (dark icons)
      ),
      toolbarTextStyle: const TextTheme(
        titleLarge: TextStyle(
          color: Colors.white,
          fontSize: 18.0,
          fontWeight: FontWeight.w400,
        ),
      ).bodyMedium,
      titleTextStyle: const TextTheme(
        titleLarge: TextStyle(
          color: Colors.white,
          fontSize: 18.0,
          fontWeight: FontWeight.w400,
        ),
      ).titleLarge,
    ),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: Colors.white,
    ), colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: ColorPalette.primaryBase,
      secondary: ColorPalette.secondaryBase,
      brightness: Brightness.dark,
      surface: ColorPalette.mokoloBgColor,
      onSurface: Colors.grey.shade300,
    ).copyWith(background: const Color.fromRGBO(255, 255, 255, 1)),
  )
    ..textTheme.apply(
      bodyColor: ColorPalette.greyScale900,
      displayColor: ColorPalette.greyScale900,
      fontFamily: 'clasDisplayRegular',
    )
    // ..floatingActionButtonTheme.copyWith(
    //   backgroundColor: ColorPalette.greenStatutColor,
    // )
    ..snackBarTheme.copyWith(
      actionTextColor: ColorPalette.greyScale400,
    );
}

class ColorPalette {
  static const Color mokoloBgColor = Color(0xfff);
  static const Color primaryBase = Color.fromRGBO(15, 23, 42, 1);
    static const Color primary400 = Color.fromRGBO(42, 54, 70, 1);
    static const Color primary300 = Color.fromRGBO(71, 85, 105, 1);
    static const Color primary200 = Color.fromRGBO(100, 116, 139, 1);
    static const Color primary100 = Color.fromRGBO(203, 213, 225, 1);
    static const Color primary50 = Color.fromRGBO(241, 245, 249, 1);


  static const Color secondaryBase = Color.fromRGBO(255, 159, 41, 1);
  static const Color secondary400 = Color.fromRGBO(255, 178, 84, 1);
  static const Color secondary300 = Color.fromRGBO(255, 197, 127, 1);
  static const Color secondary200 = Color.fromRGBO(255, 207, 148, 1);
  static const Color secondary100 = Color.fromRGBO(255, 217, 169, 1);
  static const Color secondary50 = Color.fromRGBO(255, 245, 234, 1);

  static const Color errorBase = Color.fromRGBO(253, 106, 106, 1);
  static const Color errorDark = Color.fromRGBO(253, 79, 79, 1);
  static const Color errorLight = Color.fromRGBO(253, 129, 129, 1);

  static const Color warnBase = Color.fromRGBO(255, 208, 35, 1);
  static const Color warnDark = Color.fromRGBO(230, 187, 32, 1);
  static const Color warnLight = Color.fromRGBO(255, 222, 101, 1);

  static const Color successBase = Color.fromRGBO(12, 175, 96, 1);
  static const Color successDark = Color.fromRGBO(11, 162, 89, 1);
  static const Color successLight = Color.fromRGBO(85, 199, 144, 1);

  static const Color greyScale900 = Color.fromRGBO(15, 23, 42, 1);
  static const Color greyScale800 = Color.fromRGBO(27, 37, 55, 1);
  static const Color greyScale700 = Color.fromRGBO(42, 54, 70, 1);
  static const Color greyScale600 = Color.fromRGBO(71, 85, 105, 1);
  static const Color greyScale500 = Color.fromRGBO(100, 116, 139, 1);
  static const Color greyScale400 = Color.fromRGBO(148, 163, 184, 1);
  static const Color greyScale300 = Color.fromRGBO(203, 213, 225, 1);
  static const Color greyScale200 = Color.fromRGBO(226, 232, 240, 1);
  static const Color greyScale100 = Color.fromRGBO(241, 245, 249, 1);
  static const Color greyScale50 = Color.fromRGBO(248, 250, 252, 1);


  static const Color white = Color.fromRGBO(255, 255, 255, 1);
}

class Config {
    static const String version = 'V1.0.0-1';
}

class Fonts {
  static const String regular = 'clashDisplayRegular';
  static const String semibold = 'clashDisplaySemibold';
  static const String medium = 'clashDisplayMedium';
  static const String bold = 'clashDisplayBold';
  static const String light = 'clashDisplayLight';
  static const String extralight = 'clashDisplayExtraLight';

}

class FontsSize {
    static const double head1 = 48.0;
    static const double head2 = 40.0;
    static const double head3 = 32.0;
    static const double head4 = 24.0;
    static const double head5 = 20.0;
    static const double head6 = 18.0;

    static const double xlarge = 18.0;
    static const double large = 16.0;
    static const double medium = 14.0;
    static const double small = 12.0;
    static const double xsmall = 10.0;
}

class AssetName {}

class IconsName {
  static const String back = 'assets/icons/back.svg';
  static const String bag = 'assets/icons/bag.svg';
  static const String card = 'assets/icons/card.svg';
  static const String chevronRight = 'assets/icons/chevron-right.svg';
  static const String clock = 'assets/icons/clock.svg';
  static const String close = 'assets/icons/close.svg';
  static const String filter = 'assets/icons/filter.svg';
  static const String heart = 'assets/icons/heart.svg';
  static const String home = 'assets/icons/home.svg';
  static const String minus = 'assets/icons/minus.svg';
  static const String money = 'assets/icons/money.svg';
  static const String notification = 'assets/icons/notification.svg';
  static const String plus = 'assets/icons/plus.svg';
  static const String profile = 'assets/icons/profile.svg';
  static const String questionCircle = 'assets/icons/question-circle.svg';
  static const String scan = 'assets/icons/scan.svg';
  static const String search = 'assets/icons/search.svg';
  static const String sms = 'assets/icons/sms.svg';
  static const String ticketDiscount = 'assets/icons/ticket-discount.svg';
  static const String trash = 'assets/icons/trash.svg';
  static const String truckDelivery = 'assets/icons/truck-delivery.svg';
}