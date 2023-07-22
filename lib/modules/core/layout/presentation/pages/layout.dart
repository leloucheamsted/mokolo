import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mokolo/modules/common/constants/constants.dart';
import 'package:mokolo/modules/common/constants/layout_constants.dart';
import 'package:mokolo/modules/core/layout/bloc/layout_bloc.dart';
import 'package:mokolo/modules/core/presentation/stream_builder_all.dart';
import 'package:mokolo/modules/home/presentation/pages/home.page.dart';
import 'package:mokolo/modules/orders/presentation/pages/orders.page.dart';
import 'package:mokolo/modules/user/presentation/pages/profile.page.dart';
import 'package:mokolo/modules/search/presentation/pages/search.page.dart';

class Layout extends StatefulWidget {
  const Layout({super.key});

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> with SingleTickerProviderStateMixin {
  final List<Widget> pages = const [
    HomePage(),
    SearchPage(),
    OrdersPage(),
    ProfilePage(),
  ];
  final LayoutBloc bloc = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorPalette.white,
        resizeToAvoidBottomInset: true,
        body: StreamBuilder_all<int>(
          stream: bloc.currentIndexStream,
          onSuccess: (_, data) {
            return IndexedStack(
              index: data,
              children: pages,
            );
          },
        ),
        bottomNavigationBar: BottomAppBar(
          elevation: 19,
          color: ColorPalette.white,
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
                      offset: const Offset(0.0, -10.75))
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
                    _navigationItem(IconsName.order, TabList.order, 2),
                    _navigationItem(IconsName.profile, TabList.profile, 3),
                  ],
                ),
              )),
        ));
  }

  Widget _navigationItem(String icon, name, int index) {
    return InkWell(
        onTap: () {
          bloc.changeIndex(index);
        },
        child: StreamBuilder_all<int>(
            stream: bloc.currentIndexStream,
            onSuccess: (_, data) {
              return Column(
                children: [
                  SvgPicture.asset(
                    height: LayoutConstants.medium,
                    width: LayoutConstants.medium,
                    icon,
                    // ignore: deprecated_member_use
                    color: data == index
                        ? ColorPalette.greyScale900
                        : ColorPalette.greyScale400,
                  ),
                  Text(
                    name,
                    style: TextStyle(
                        fontFamily: Fonts.medium,
                        color: data == index
                            ? ColorPalette.greyScale900
                            : ColorPalette.greyScale400,
                        fontSize: FontsSize.head6),
                  )
                ],
              );
            }));
  }
}
