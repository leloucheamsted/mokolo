import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mokolo/modules/common/constants/layout_constants.dart';
import 'package:mokolo/modules/common/widgets/widgets.dart';
import 'package:mokolo/modules/shipping/domain/models/place_auto_complete_response.dart';
import 'package:mokolo/modules/shipping/presentation/pages/ui/improved_draggable_scrollable_sheet.dart';
import 'package:mokolo/modules/shipping/presentation/pages/ui/network_utilities.dart';

import '../../../common/constants/constants.dart';
import '../../domain/models/autocomplete_prediction.dart';
import 'ui/location_list_tile.dart';

class SelectPinPointPage extends StatefulWidget {
  const SelectPinPointPage({super.key});

  @override
  State<SelectPinPointPage> createState() => _SelectPinPointPageState();
}

class _SelectPinPointPageState extends State<SelectPinPointPage> {
  List<AutocompletePrediction> placePredictions = [];
  void placeAutocomplete(String query) async {
    Uri uri =
        Uri.https("maps.googleapis.com", 'maps/api/place/autocomplete/json', {
      "input": query,
      "key": 'AIzaSyArjVizDDrADsY50cF3LG1DmWGHjnNOJa0',
    });
    String? response = await NetworkUtilities.fetchUrl(uri);

    if (response != null) {
      // print(response);
      PlaceAutocompleteResponse result =
          PlaceAutocompleteResponse.parseAutocompleteResult(response);
      if (result.predictions != null) {
        setState(() {
          placePredictions = result.predictions!;
        });
      }
    }
  }

  final Completer<GoogleMapController> _controller = Completer();
  static const CameraPosition _kGoogle = CameraPosition(
    target: LatLng(20.42796133580664, 80.885749655962),
    zoom: 10.00,
  );

  final Set<Marker> _markers = {};

  Set<Marker> myMarker() {
    setState(() {
      _markers.add(
        const Marker(
            markerId: MarkerId('1'),
            position: LatLng(20.42796133580664, 75.885749655962),
            infoWindow: InfoWindow(
              title: 'My Position',
            )),
      );
    });

    return _markers;
  }

  @override
  Widget build(BuildContext context) {
    SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.transparent);
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Stack(
          children: [
            GoogleMap(
              // on below line setting camera position
              initialCameraPosition: _kGoogle,
              // on below line we are setting markers on the map
              markers: myMarker(),
              // on below line specifying map type.
              mapType: MapType.normal,
              // on below line setting user location enabled.
              myLocationEnabled: true,
              // on below line setting compass enabled.
              compassEnabled: true,
              // on below line specifying controller on map complete.
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
              },
            ),
            const ImprovedDraggableScrollableSheet(),
            Positioned(
                right: LayoutConstants.spacingMedium,
                top: LayoutConstants.spacingLarge * 2,
                left: LayoutConstants.spacingXBig + 20,
                child: SizedBox(
                  child: placePredictions.isNotEmpty
                      ? Container(
                          //  padding: const EdgeInsets.all(LayoutConstants.paddingMedium),
                          height: MediaQuery.of(context).size.height / 3,
                          width: 30,
                          decoration: BoxDecoration(
                              color: ColorPalette.white,
                              borderRadius: BorderRadius.circular(
                                  LayoutConstants.radiusSmall)),
                          child: ListView.builder(
                            padding: EdgeInsets.zero,
                            itemCount: 10,
                            itemBuilder: (context, index) => LocationListTile(
                              press: () {},
                              location: "location $index",
                            ),
                          ))
                      : null,
                )),
            Positioned(
              left: LayoutConstants.spacingMedium,
              top: LayoutConstants.spacingLarge * 2,
              child: Container(
                height: 40,
                width: 40,
                alignment: Alignment.center,
                padding: const EdgeInsets.all(LayoutConstants.paddingMedium),
                decoration: BoxDecoration(
                  color: ColorPalette.white,
                  borderRadius:
                      BorderRadius.circular(LayoutConstants.radiusXlarge),
                ),
                child: SvgPicture.asset(IconsName.back),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();

    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values); // to re-show bars
  }

  // ignore: unused_element
  Widget _ui() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(LayoutConstants.paddingLarge),
          child: TextFormField(
            onChanged: (value) {
              placeAutocomplete(value);
            },
            style: const TextStyle(
                color: ColorPalette.primaryBase,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.2,
                fontSize: FontsSize.large,
                fontFamily: Fonts.medium),
            textInputAction: TextInputAction.search,
            decoration: const InputDecoration(
              hintText: 'Search your location',
              hintStyle: TextStyle(
                  color: ColorPalette.primaryBase,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.2,
                  fontSize: FontsSize.large,
                  fontFamily: Fonts.medium),
            ),
          ),
        ),
        const Divider(
            height: 4, thickness: 4, color: ColorPalette.greyScale200),
        ActionButton(
            title: 'Use current location',
            onPressed: () {
              // placeAutocomplete("Dubaï");
            }),
        Expanded(
          child: ListView.builder(
            itemCount: placePredictions.length,
            itemBuilder: (context, index) => Text(
              placePredictions[index].description!,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            // LocationListTile(
            //   press: () {},
            //   location: placePredictions[index].description!,
            // ),
          ),
        ),
      ],
    );
  }
}
