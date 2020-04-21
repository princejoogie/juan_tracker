import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:juan_tracker/widgets/product_widget.dart';

class FacilityDashboard extends StatefulWidget {
  const FacilityDashboard({Key key}) : super(key: key);

  @override
  _FacilityDashboardState createState() => _FacilityDashboardState();
}

class _FacilityDashboardState extends State<FacilityDashboard> {
  Completer<GoogleMapController> _controller = Completer();
  GoogleMapController _mapController;
  String _mapStyle;

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
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height / 2,
              width: double.infinity,
              child: Stack(
                children: <Widget>[
                  GoogleMap(
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
                  Padding(
                    padding: EdgeInsets.only(bottom: 25.0),
                    child: Align(
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.location_on,
                        color: Colors.red,
                        size: 50.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 20.0),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 40,
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          color: Colors.white70,
                          textColor: Colors.black,
                          disabledColor: Colors.grey,
                          disabledTextColor: Colors.black,
                          splashColor: Colors.white,
                          onPressed: () {},
                          child: Text(
                            "Pin",
                            style: TextStyle(fontSize: 14.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 15.0,
                    left: 15.0,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white70,
                        size: 40.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
            ),
            Container(
              height: MediaQuery.of(context).size.height / 2 - 70,
              child: ProductWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
