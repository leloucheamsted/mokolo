import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mokolo/modules/orders/presentation/pages/ui/order_item.dart';

import '../../../common/constants/constants.dart';
import '../../../common/constants/layout_constants.dart';
import '../../../common/widgets/appBar/back_custom_app_bar.dart';
import '../../../common/widgets/buttons/action_button.dart';

class OrdersPage extends StatefulWidget {
  const OrdersPage({super.key});

  @override
  State<OrdersPage> createState() => _OrdersPageState();
}

final List<dynamic> data = [
  {
    'name': 'In Progress',
    'active': true,
  },
  {
    'name': 'Complete',
    'active': false,
  },
  {
    'name': 'Failed Payment',
    'active': false,
  }
];

class _OrdersPageState extends State<OrdersPage> {
  late bool noOrder = true;
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
                'My Orders',
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
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 45,
              child: ListView.builder(
                itemCount: data.length,
                itemBuilder: (_, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: LayoutConstants.paddingSmall - 2),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: LayoutConstants.paddingSmall - 8,
                          horizontal: LayoutConstants.paddingXlarge),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: data[index]['active']
                              ? ColorPalette.secondaryBase
                              : ColorPalette.greyScale300,
                        ),
                        borderRadius:
                            BorderRadius.circular(LayoutConstants.radiusBig),
                      ),
                      child: Center(
                        child: Text(
                          data[index]['name'],
                          style: TextStyle(
                              color: data[index]['active']
                                  ? ColorPalette.secondaryBase
                                  : ColorPalette.greyScale900,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.1,
                              fontSize: FontsSize.medium,
                              fontFamily: data[index]['active']
                                  ? Fonts.bold
                                  : Fonts.medium),
                        ),
                      ),
                    ),
                  );
                },
                scrollDirection: Axis.horizontal,
              ),
            ),
            const SizedBox(height: LayoutConstants.spacingMedium),
            Expanded(
              child: SizedBox(
                child: noOrder
                    ? const SingleChildScrollView(
                        child: Column(
                          children: [
                            OrderItem(),
                            OrderItem(),
                            OrderItem(),
                          ],
                        ),
                      )
                    : _noOrder(),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _noOrder() {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: LayoutConstants.paddingXlarge * 2,
          vertical: LayoutConstants.paddingLarge),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(IconsName.noorders),
                const SizedBox(height: LayoutConstants.spacingBig),
                const Text(
                  'No Orders',
                  style: TextStyle(
                      color: ColorPalette.greyScale900,
                      fontWeight: FontWeight.w600,
                      fontFamily: Fonts.bold,
                      fontSize: FontsSize.head4,
                      letterSpacing: 0.4),
                ),
                const Text(
                  'When you have an order, it will appear here.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: ColorPalette.greyScale400,
                      fontWeight: FontWeight.w400,
                      fontFamily: Fonts.regular,
                      fontSize: FontsSize.medium,
                      letterSpacing: 0.4),
                ),
                const SizedBox(height: LayoutConstants.spacingLarge),
              ],
            ),
          ),
          ActionButton(
            title: 'Shop Now',
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
