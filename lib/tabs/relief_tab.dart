import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:juan_tracker/widgets/product_widget.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ReliefTab extends StatefulWidget {
  const ReliefTab({Key key}) : super(key: key);

  @override
  _ReliefTabState createState() => _ReliefTabState();
}

class _ReliefTabState extends State<ReliefTab> {
  Completer<GoogleMapController> _controller = Completer();
  GoogleMapController _mapController;
  String _mapStyle;

  final Completer<WebViewController> _webViewController =
      Completer<WebViewController>();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(14.5311, 121.0213),
    zoom: 14.0,
  );

  @override
  void initState() {
    super.initState();
    rootBundle.loadString('assets/map_style.txt').then((string) {
      _mapStyle = string;
    });
  }

  String dropdownValue = 'St. Lukes Medical Center BGC';

  @override
  Widget build(BuildContext context) {
    // return WebView(
    //   gestureRecognizers: <Factory<OneSequenceGestureRecognizer>>[
    //     new Factory<OneSequenceGestureRecognizer>(
    //       () => new EagerGestureRecognizer(),
    //     ),
    //   ].toSet(),
    //   initialUrl:
    //       // "https://www.doh.gov.ph/2019-nCoV",
    //       "https://www.google.com/maps/d/u/0/viewer?ll=14.880250189625459%2C121.79393725998648&z=9&mid=1MMfp_I8jakIy6mzoz2aPQRHdOrbofdmk&fbclid=IwAR2BLCrrZmQzsdMxJaeOEdragBxiWQrgctMEtsnrMCeDOgRlA-sYRfcEb80",
    //   javascriptMode: JavascriptMode.unrestricted,
    //   onWebViewCreated: (WebViewController webViewController) {
    //     _webViewController.complete(webViewController);
    //   },
    // );
    return ListView(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height / 2 -
                  kBottomNavigationBarHeight,
              width: double.infinity,
              child: GoogleMap(
                gestureRecognizers: <Factory<OneSequenceGestureRecognizer>>[
                  new Factory<OneSequenceGestureRecognizer>(
                    () => new EagerGestureRecognizer(),
                  ),
                ].toSet(),
                mapType: MapType.normal,
                zoomGesturesEnabled: true,
                initialCameraPosition: _kGooglePlex,
                onMapCreated: (GoogleMapController controller) {
                  _mapController = controller;
                  _controller.complete(controller);
                  _mapController.setMapStyle(_mapStyle);
                },
              ),
            ),
          ],
        ),
        Container(
          height: 50,
          color: Colors.white,
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 30,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text("Facility Name"),
                ),
              ),
              Expanded(
                flex: 70,
                child: DropdownButton<String>(
                  value: dropdownValue,
                  style: TextStyle(color: Colors.deepPurple),
                  onChanged: (String newValue) {
                    setState(() {
                      dropdownValue = newValue;
                    });
                  },
                  items: <String>[
                    'St. Lukes Medical Center BGC',
                    'Philippine General Hospital',
                    'Ospital ng Maynila Medical Center',
                    'Makati Medical Center'
                  ].map<DropdownMenuItem<String>>(
                    (String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    },
                  ).toList(),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height / 2 - 70,
          child: ProductWidget(),
        ),
      ],
    );
  }
}
