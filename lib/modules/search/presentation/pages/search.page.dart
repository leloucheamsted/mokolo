import 'package:flutter/material.dart';
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
              _autoCompleteChoice()
              //  _recentSearchText(),
            ],
          ),
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
