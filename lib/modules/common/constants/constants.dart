import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Constants {
  static final theme = ThemeData(
      brightness: Brightness.dark,
      primaryColor: ColorPalette.white,
      fontFamily: 'clashDisplayRegular',
      scaffoldBackgroundColor: Colors.white,
      dividerColor: ColorPalette.white,
      dividerTheme: const DividerThemeData(
        color: ColorPalette.white,
        thickness: 1,
      ),
      inputDecorationTheme: const InputDecorationTheme(
        iconColor: ColorPalette.greyScale900,
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
          statusBarIconBrightness:
              Brightness.dark, //<-- For Android SEE HERE (dark icons)
          statusBarBrightness:
              Brightness.light, //<-- For iOS SEE HERE (dark icons)
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
            color: ColorPalette.greyScale900,
            fontSize: 18.0,
            fontWeight: FontWeight.w400,
          ),
        ).titleLarge,
      ),
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: ColorPalette.greyScale900,
      ),
      colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: ColorPalette.primaryBase,
        secondary: ColorPalette.greyScale200,
        brightness: Brightness.dark,
        surface: ColorPalette.mokoloBgColor,
        onSurface: ColorPalette.greyScale900,
      )
      //.copyWith(background: const Color.fromRGBO(255, 255, 255, 1)),
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
  // ignore: use_full_hex_values_for_flutter_colors
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
  static const Color dangerColor = Color.fromRGBO(255, 245, 245, 1);
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

class AssetName {
  static const String appName = "shoppa";
}

class TabList {
  static const String home = "Home";
  static const String search = "Search";
  static const String order = "Order";
  static const String profile = "Profile";
}

class ImagesName {
  static const String shoppa = 'assets/images/shoppa.png';

  static const String mokolo = 'assets/images/mokolo.png';
  static const String photo = 'assets/images/photo.png';
  static const String mtn = 'assets/images/mtn.png';
  static const String orange = 'assets/images/orange.png';
  static const String map = 'assets/images/map.png';
  static const String apple = 'assets/images/apple.png';
  static const String onboardingstep1 = 'assets/images/onboardingstep1.png';
  static const String onboardingstep2 = 'assets/images/onboardingstep2.png';
  static const String onboardingstep3 = 'assets/images/onboardingstep3.png';
}

class IconsName {
  static const String mobile = 'assets/icons/mobile.svg';
  static const String back = 'assets/icons/back.svg';
  static const String chevronDown = 'assets/icons/chevron-down.svg';
  static const String paymentsuccess = 'assets/icons/paymentsuccess.svg';
  static const String currentlocation = 'assets/icons/current_location.svg';

  static const String user = 'assets/icons/user.svg';
  static const String message = 'assets/icons/message.svg';
  static const String map1 = 'assets/icons/map1.svg';
  static const String global = 'assets/icons/global.svg';
  static const String users = 'assets/icons/users.svg';
  static const String lock = 'assets/icons/lock.svg';
  static const String star = 'assets/icons/star.svg';
  static const String gb = 'assets/icons/gb.svg';
  static const String fr = 'assets/icons/fr.svg';
  static const String alert = 'assets/icons/alert.svg';
  static const String shop = 'assets/icons/shop.svg';
  static const String inprogress = 'assets/icons/inprogress.svg';
  static const String noorders = 'assets/icons/noorders.svg';

  static const String addressHome = 'assets/icons/address_home.svg';
  static const String building = 'assets/icons/building.svg';
  static const String check = 'assets/icons/check.svg';
  static const String map = 'assets/icons/map.svg';
  static const String noresult = 'assets/icons/not_result.svg';
  static const String noconnexion = 'assets/icons/noconnexion.svg';
  static const String serverdown = 'assets/icons/serverdown.svg';

  static const String notfound = 'assets/icons/404.svg';
  // ignore: constant_identifier_names
  static const String map_pin = 'assets/icons/map-pin.svg';
  static const String disablemap = 'assets/icons/disablemap.svg';
  static const String edit = 'assets/icons/edit.svg';
  static const String emptyCart = 'assets/icons/emptyCart.svg';
  static const String promo = 'assets/icons/promo.svg';
  static const String order = 'assets/icons/order.svg';
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
  static const String cm = 'assets/icons/cm.svg';
}
