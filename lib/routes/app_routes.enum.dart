enum AppRoute {
  initial("/"),
  splash("/splash/"),
  onboarding("/onboarding/"),

  auth("/auth/"),
  otp("/auth/otp/"),
  addinfo("/auth/addinfo/"),

  layout('/layout/'),

  home("/home/"),
  store("/home/store/"),
  notification("/notification/"),

  cart("/cart/"),
  promo("/cart/promo/"),

  shipping("/shipping/"),
  address("/shipping/address/"),
  newaddress("/shipping/address/new/"),
  pinaddress("/shipping/address/pin/"),

  search("/search/"),

  orders("/orders"),
  orderdetail("/orders/detail"),

  checkout("/payment/"),
  newpayment("/payment/new"),
  paymentsuccess("/payment/success"),

  user("/user/"),
  userProfileCurrent("/user/profile"),
  userProfileEdit("/user/profile/edit"),
  userProfileNotification("/user/profile/notification"),
  userProfileDelete("/user/profile/delete"),
  userProfileLanguage("/user/profile/language"),
  ;

  String get pathAsChild {
    final List l = path.split("/");
    l.removeAt(0);
    if (path.startsWith("/")) {
      l.removeAt(0);
    }
    final String t = "/${l.join("/")}";
    return t;
  }

  const AppRoute(this.path);
  final String path;
  String withIdParam(String value) {
    return path.replaceAll(":id", value);
  }
}
