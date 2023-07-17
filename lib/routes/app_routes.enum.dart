enum AppRoute {
  initial("/"),
  splash("/splash/"),
  onboarding("/onboarding/"),
  home("/home"),
  layout('/layout/'),
  auth("/auth/"),
  otp("/auth/otp/"),

  user("/user/"),
  userProfileCurrent("/user/profile"),
  userProfileEdit("/user/profile/edit"),
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
