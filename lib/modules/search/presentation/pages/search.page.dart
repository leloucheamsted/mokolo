import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mokolo/modules/common/widgets/widgets.dart';
import 'package:mokolo/modules/search/presentation/pages/ui/choice_item.dart';
import 'package:mokolo/modules/search/presentation/pages/ui/recent_search_item.dart';
import 'package:mokolo/modules/search/presentation/pages/ui/search_bar.dart';

import '../../../common/constants/constants.dart';
import '../../../common/constants/layout_constants.dart';
import '../../../common/widgets/appBar/back_custom_app_bar.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: LayoutConstants.appBarSize,
          flexibleSpace: BackCustomAppBar(
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Search',
                  style: TextStyle(
                      color: ColorPalette.greyScale900,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.1,
                      fontSize: FontsSize.xlarge,
                      fontFamily: Fonts.bold),
                ),
              ],
            ),
            callback: () {},
          )),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(LayoutConstants.paddingLarge),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SearchBarUi(),
              const SizedBox(height: LayoutConstants.spacingLarge),
              _noResult(),

              //_autoCompleteChoice()
              //  _recentSearchText(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _noResult() {
    return Padding(
      padding: const EdgeInsets.all(LayoutConstants.paddingXlarge * 2),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(IconsName.noresult),
            const SizedBox(height: LayoutConstants.spacingBig),
            const Text(
              'No result found',
              style: TextStyle(
                  color: ColorPalette.greyScale900,
                  fontWeight: FontWeight.w600,
                  fontFamily: Fonts.bold,
                  fontSize: FontsSize.head4,
                  letterSpacing: 0.4),
            ),
            const Text(
              'This page doesn’t exist or was removed! we suggest you back to home.',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: ColorPalette.greyScale400,
                  fontWeight: FontWeight.w400,
                  fontFamily: Fonts.regular,
                  fontSize: FontsSize.medium,
                  letterSpacing: 0.4),
            ),
            const SizedBox(height: LayoutConstants.spacingLarge),
            ActionButton(title: 'Try Another keyword', onPressed: () {})
          ],
        ),
      ),
    );
  }

  Widget _autoCompleteChoice() {
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Stores',
              style: TextStyle(
                  color: ColorPalette.greyScale400,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.4,
                  fontSize: FontsSize.large,
                  fontFamily: Fonts.bold),
            ),
          ],
        ),
        SizedBox(height: LayoutConstants.spacingSmall),
        Column(
          children: [
            ChoiceItem(),
            ChoiceItem(),
            ChoiceItem(),
          ],
        )
      ],
    );
  }

  Widget _recentSearchText() {
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Recent',
              style: TextStyle(
                  color: ColorPalette.greyScale900,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.4,
                  fontSize: FontsSize.large,
                  fontFamily: Fonts.bold),
            ),
            Text(
              'Delete',
              style: TextStyle(
                  color: ColorPalette.greyScale400,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.4,
                  fontSize: FontsSize.large,
                  fontFamily: Fonts.bold),
            ),
          ],
        ),
        SizedBox(height: LayoutConstants.spacingSmall),
        Column(
          children: [
            RecentSearchItem(),
            RecentSearchItem(),
            RecentSearchItem(),
            RecentSearchItem(),
            RecentSearchItem(),
            RecentSearchItem(),
            RecentSearchItem(),
            RecentSearchItem(),
            // RecentSearchItem(),
            // RecentSearchItem(),
            // RecentSearchItem(),
            // RecentSearchItem(),
            // RecentSearchItem(),
            // RecentSearchItem(),
            // RecentSearchItem(),
            // RecentSearchItem(),
          ],
        )
      ],
    );
  }
}
