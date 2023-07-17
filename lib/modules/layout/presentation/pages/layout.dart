import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mokolo/modules/common/constants/constants.dart';

class Layout extends StatefulWidget {
  const Layout({super.key});

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        bottomNavigationBar: BottomAppBar(
          elevation: 19,
          shape: const CircularNotchedRectangle(),
          notchMargin: 10,
          child: Container(
              height: 60,
              decoration: BoxDecoration(
                color: ColorPalette.white,
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Colors.black.withOpacity(.1),
                      blurRadius: 15.0,
                      offset: const Offset(0.0, 0.75))
                ],
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    _navigationItem(IconsName.home, TabList.home, 0),
                    _navigationItem(IconsName.search, TabList.search, 1),
                    _navigationItem(IconsName.bag, TabList.order, 2),
                    _navigationItem(IconsName.profile, TabList.profile, 3),
                  ],
                ),
              )),
        ));
  }

  Widget _navigationItem(String icon, name, int tabIndex) {
    return InkWell(
      onTap: () {
//context.read<NavBarProvider>().changeTab(tabIndex);
      },
      child: Column(
        children: [
          SvgPicture.asset(
            height: 22,
            width: 22,
            icon,
            color: ColorPalette.greyScale900,
          ),
          Text(
            name,
            style: TextStyle(
                fontFamily: Fonts.medium,
                color: ColorPalette.greyScale900,
                fontSize: FontsSize.head6),
          )
        ],
      ),
    );
  }
}
