// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mokolo/modules/common/constants/constants.dart';
import 'package:mokolo/modules/common/constants/layout_constants.dart';

class ImprovedDraggableScrollableSheet extends StatefulWidget {
  const ImprovedDraggableScrollableSheet({Key? key}) : super(key: key);

  @override
  State<ImprovedDraggableScrollableSheet> createState() =>
      _ImprovedDraggableScrollableSheetState();
}

class _ImprovedDraggableScrollableSheetState
    extends State<ImprovedDraggableScrollableSheet> {
  final GlobalKey commentsHeaderKey = GlobalKey();

  double commentsHeaderHeight = 0.8;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      // Sets initial size of comments bottom sheet. Thanks to it users always see just a header of the bottom sheet at the beginning.
      final double currentCommentsHeaderHeight =
          commentsHeaderKey.currentContext?.size?.height ?? 0;
      if (currentCommentsHeaderHeight != commentsHeaderHeight) {
        setState(() {
          commentsHeaderHeight = currentCommentsHeaderHeight;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQueryData = MediaQuery.of(context);
    // In most cases the better idea here is to use LayoutBuilder widget and [BoxConstrainst.height] instead of max height of the device.
    final double heightOfDevice = mediaQueryData.size.height;
    final double initialChildSize = (commentsHeaderHeight +
            mediaQueryData.viewPadding.bottom +
            mediaQueryData.viewPadding.top) /
        heightOfDevice;

    return DraggableScrollableSheet(
      initialChildSize: initialChildSize,
      minChildSize: initialChildSize,
      maxChildSize: initialChildSize,
      builder: (context, scrollController) {
        return Container(
          padding: EdgeInsets.only(
              bottom: mediaQueryData.viewPadding.bottom,
              top: LayoutConstants.paddingLarge),
          // margin: EdgeInsets.only(top: mediaQueryData.viewPadding.top),
          decoration: const BoxDecoration(
            color: ColorPalette.white,
            borderRadius: BorderRadius.vertical(
                top: Radius.circular(LayoutConstants.radiusBig - 10)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _CommentsHeader(
                  key: commentsHeaderKey, scrollController: scrollController),
            ],
          ),
        );
      },
    );
  }
}

class _CommentsHeader extends StatelessWidget {
  const _CommentsHeader({
    Key? key,
    required this.scrollController,
  }) : super(key: key);

  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const ClampingScrollPhysics(),
      controller: scrollController,
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: LayoutConstants.paddingLarge),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const _CommentsHeaderPill(),
            const SizedBox(height: LayoutConstants.paddingXlarge),
            const Text(
              'Set Pinpoint Location',
              textAlign: TextAlign.start,
              style: TextStyle(
                  color: ColorPalette.greyScale900,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.4,
                  fontSize: FontsSize.large,
                  fontFamily: Fonts.bold),
            ),
            const SizedBox(height: LayoutConstants.paddingLarge),
            Container(
              height: LayoutConstants.actionBtnHeight,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: ColorPalette.greyScale200,
                ),
                borderRadius: BorderRadius.circular(LayoutConstants.radiusBig),
              ),
              child: Padding(
                padding: const EdgeInsets.all(LayoutConstants.paddingLarge),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset(IconsName.search,
                        color: ColorPalette.greyScale900),
                    const SizedBox(width: LayoutConstants.spacingSmall),
                    Expanded(child: _buildInputStoreName()),
                  ],
                ),
              ),
            ),
            const SizedBox(height: LayoutConstants.paddingLarge),
            Container(
              padding: const EdgeInsets.all(LayoutConstants.paddingLarge),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: ColorPalette.greyScale300,
                ),
                borderRadius:
                    BorderRadius.circular(LayoutConstants.radiusLarge - 4),
              ),
              child: Row(children: [
                SvgPicture.asset(IconsName.currentlocation),
                const SizedBox(width: LayoutConstants.spacingSmall),
                const Expanded(
                  child: Text(
                    'Select pin point',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: ColorPalette.primaryBase,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.4,
                        fontSize: FontsSize.medium,
                        fontFamily: Fonts.medium),
                  ),
                ),
                SvgPicture.asset(IconsName.chevronRight,
                    color: ColorPalette.greyScale900)
              ]),
            ),
            //const SizedBox(height: LayoutConstants.paddingXlarge),
            SizedBox(height: MediaQuery.of(context).viewPadding.bottom),
          ],
        ),
      ),
    );
  }

  Widget _buildInputStoreName() {
    return TextField(
      autofocus: false,
      // controller: _phoneTxtCtrl,
      // onChanged: ((value) {
      //   context.read<AuthBloc>().setPhoneNumber = value;
      // }),
      keyboardType: TextInputType.text,
      textAlign: TextAlign.left,
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
      ],

      /// Add Text style with decoration
      style: const TextStyle(
          color: ColorPalette.greyScale900,
          fontFamily: Fonts.medium,
          fontWeight: FontWeight.w500,
          fontSize: FontsSize.medium,
          letterSpacing: 0.1),
      decoration: const InputDecoration.collapsed(
        hintText: 'Search stores',
        hintStyle: TextStyle(
            color: ColorPalette.greyScale300,
            fontFamily: Fonts.medium,
            fontWeight: FontWeight.w500,
            fontSize: FontsSize.large,
            letterSpacing: 0.3),
      ),
    );
  }
}

class _CommentsHeaderPill extends StatelessWidget {
  const _CommentsHeaderPill({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 4),
        Container(
          width: 40,
          height: 8,
          decoration: const BoxDecoration(
            color: ColorPalette.greyScale100,
            borderRadius: BorderRadius.all(Radius.circular(100)),
          ),
        ),
      ],
    );
  }
}
