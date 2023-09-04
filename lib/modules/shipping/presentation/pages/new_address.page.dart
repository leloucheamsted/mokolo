import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mokolo/modules/common/constants/constants.dart';
import 'package:mokolo/modules/common/widgets/widgets.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../../routes/app_routes.enum.dart';
import '../../../common/constants/layout_constants.dart';

class NewAddressPage extends StatefulWidget {
  const NewAddressPage({super.key});

  @override
  State<NewAddressPage> createState() => _NewAddressPageState();
}

class _NewAddressPageState extends State<NewAddressPage> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();
  final Set<Marker> _markers = {};
  static const LatLng _mainLocation = LatLng(25.69893, 32.6421);

  // ignore: unused_field
  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );
  // ignore: unused_field
  static const CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 0.151926040649414);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.white,
      appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: LayoutConstants.appBarSize,
          flexibleSpace:
              BackTitleAppBar(title: 'New Address', callback: () {})),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(LayoutConstants.paddingLarge),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                  child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      padding:
                          const EdgeInsets.all(LayoutConstants.paddingLarge),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: ColorPalette.greyScale300,
                        ),
                        borderRadius:
                            BorderRadius.circular(LayoutConstants.radiusBig),
                      ),
                      child: TextField(
                        autofocus: false,
                        // controller: _phoneTxtCtrl,
                        // onChanged: ((value) {
                        //   context.read<AuthBloc>().setPhoneNumber = value;
                        // }),
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.left,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                        ],

                        /// Add Text style with decoration
                        style: const TextStyle(
                            color: ColorPalette.greyScale900,
                            fontFamily: Fonts.medium,
                            fontWeight: FontWeight.w500,
                            fontSize: FontsSize.large,
                            letterSpacing: 0.1),
                        decoration: const InputDecoration.collapsed(
                          hintText: 'Address name',
                          hintStyle: TextStyle(
                              color: ColorPalette.greyScale300,
                              fontFamily: Fonts.medium,
                              fontWeight: FontWeight.w500,
                              fontSize: FontsSize.large,
                              letterSpacing: 0.1),
                        ),
                      ),
                    ),
                    const SizedBox(height: LayoutConstants.spacingMedium),
                    Container(
                      padding:
                          const EdgeInsets.all(LayoutConstants.paddingLarge),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: ColorPalette.greyScale300,
                        ),
                        borderRadius:
                            BorderRadius.circular(LayoutConstants.radiusBig),
                      ),
                      child: TextField(
                        autofocus: false,
                        // controller: _phoneTxtCtrl,
                        // onChanged: ((value) {
                        //   context.read<AuthBloc>().setPhoneNumber = value;
                        // }),
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.left,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                        ],

                        /// Add Text style with decoration
                        style: const TextStyle(
                            color: ColorPalette.greyScale900,
                            fontFamily: Fonts.medium,
                            fontWeight: FontWeight.w500,
                            fontSize: FontsSize.large,
                            letterSpacing: 0.1),
                        decoration: const InputDecoration.collapsed(
                          hintText: 'Country',
                          hintStyle: TextStyle(
                              color: ColorPalette.greyScale300,
                              fontFamily: Fonts.medium,
                              fontWeight: FontWeight.w500,
                              fontSize: FontsSize.large,
                              letterSpacing: 0.1),
                        ),
                      ),
                    ),
                    const SizedBox(height: LayoutConstants.spacingMedium),
                    Container(
                      padding:
                          const EdgeInsets.all(LayoutConstants.paddingLarge),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: ColorPalette.greyScale300,
                        ),
                        borderRadius:
                            BorderRadius.circular(LayoutConstants.radiusBig),
                      ),
                      child: TextField(
                        autofocus: false,
                        // controller: _phoneTxtCtrl,
                        // onChanged: ((value) {
                        //   context.read<AuthBloc>().setPhoneNumber = value;
                        // }),
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.left,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                        ],

                        /// Add Text style with decoration
                        style: const TextStyle(
                            color: ColorPalette.greyScale900,
                            fontFamily: Fonts.medium,
                            fontWeight: FontWeight.w500,
                            fontSize: FontsSize.large,
                            letterSpacing: 0.1),
                        decoration: const InputDecoration.collapsed(
                          hintText: 'City',
                          hintStyle: TextStyle(
                              color: ColorPalette.greyScale300,
                              fontFamily: Fonts.medium,
                              fontWeight: FontWeight.w500,
                              fontSize: FontsSize.large,
                              letterSpacing: 0.1),
                        ),
                      ),
                    ),
                    const SizedBox(height: LayoutConstants.spacingMedium),
                    Container(
                      padding:
                          const EdgeInsets.all(LayoutConstants.paddingLarge),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: ColorPalette.greyScale300,
                        ),
                        borderRadius:
                            BorderRadius.circular(LayoutConstants.radiusBig),
                      ),
                      child: TextField(
                        autofocus: false,
                        // controller: _phoneTxtCtrl,
                        // onChanged: ((value) {
                        //   context.read<AuthBloc>().setPhoneNumber = value;
                        // }),
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.left,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                        ],

                        /// Add Text style with decoration
                        style: const TextStyle(
                            color: ColorPalette.greyScale900,
                            fontFamily: Fonts.medium,
                            fontWeight: FontWeight.w500,
                            fontSize: FontsSize.large,
                            letterSpacing: 0.1),
                        decoration: const InputDecoration.collapsed(
                          hintText: 'Area',
                          hintStyle: TextStyle(
                              color: ColorPalette.greyScale300,
                              fontFamily: Fonts.medium,
                              fontWeight: FontWeight.w500,
                              fontSize: FontsSize.large,
                              letterSpacing: 0.1),
                        ),
                      ),
                    ),
                    const SizedBox(height: LayoutConstants.spacingMedium),
                    InkWell(
                      borderRadius:
                          BorderRadius.circular(LayoutConstants.radiusBig),
                      onTap: () {
                        Modular.to.pushNamed(AppRoute.pinaddress.path);
                      },
                      child: Container(
                        padding:
                            const EdgeInsets.all(LayoutConstants.paddingLarge),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: ColorPalette.greyScale300,
                          ),
                          borderRadius:
                              BorderRadius.circular(LayoutConstants.radiusBig),
                        ),
                        child: Row(children: [
                          SvgPicture.asset(IconsName.map_pin),
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
                              // ignore: deprecated_member_use
                              color: ColorPalette.greyScale900)
                        ]),
                      ),
                    ),
                    const SizedBox(height: LayoutConstants.spacingXLarge),
                    _map()
                  ],
                ),
              )),
              Padding(
                  padding: const EdgeInsets.all(LayoutConstants.paddingLarge),
                  child: ActionButton(
                      title: 'Save',
                      onPressed: () {
                        Modular.to.pushNamed('lelou');
                      }))
            ],
          ),
        ),
      ),
    );
  }

  Set<Marker> myMarker() {
    setState(() {
      _markers.add(Marker(
        // This marker id can be anything that uniquely identifies each marker.
        markerId: MarkerId(_mainLocation.toString()),
        position: _mainLocation,
        icon: BitmapDescriptor.defaultMarkerWithHue(2),
      ));
    });

    return _markers;
  }

  Widget _map() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(LayoutConstants.radiusMedium + 2),
      child: Container(
        decoration: BoxDecoration(
          //scolor: ColorPalette.greyScale300,
          border: Border.all(
            width: 1,
            color: ColorPalette.greyScale300,
          ),
          borderRadius: BorderRadius.circular(LayoutConstants.radiusMedium + 2),
        ),
        height: 200,
        child: GoogleMap(
          padding: const EdgeInsets.only(
              bottom: 195, left: 15), // <--- padding added here
          zoomControlsEnabled: true,
          mapType: MapType.normal,
          markers: myMarker(),
          initialCameraPosition: const CameraPosition(
            target: _mainLocation,
            zoom: 10.0,
          ),
          myLocationButtonEnabled: false,
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          },
        ),
      ),
    );
  }
}
