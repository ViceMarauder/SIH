import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

final now = DateTime.now();

class MyMaps extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyMapsState();
  }
}

class MyMapsState extends State<MyMaps> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  Completer<GoogleMapController> _controller = Completer();
  Map<MarkerId, Marker> markers = <MarkerId, Marker>{};
  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(28.65447393900712, 77.268066413013),
    zoom: 20.0,
  );
  List<MarkerId> listMarkerIds = List<MarkerId>.empty(growable: true);
  //final MarkerId markerId = MarkerId("current");
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          leading: Icon(Icons.map),
          backgroundColor: Colors.blue,
          title: Text("Camera Maps With Markers"),
        ),
        body: Container(
          child: GoogleMap(
            initialCameraPosition: _kGooglePlex,
            onTap: (_) {},
            mapType: MapType.normal,
            markers: Set<Marker>.of(markers.values),
            onMapCreated: (GoogleMapController controler) {
              _controller.complete(controler);

              MarkerId markerId1 = MarkerId("1");
              MarkerId markerId2 = MarkerId("2");
              MarkerId markerId3 = MarkerId("3");

              listMarkerIds.add(markerId1);
              listMarkerIds.add(markerId2);
              listMarkerIds.add(markerId3);

              Marker marker1 = Marker(
                  markerId: markerId1,
                  position: LatLng(28.65447393900712, 77.268066413013),
                  icon: BitmapDescriptor.defaultMarkerWithHue(
                      BitmapDescriptor.hueCyan),
                  infoWindow: InfoWindow(
                      title: "camera 1 $now.hour",
                      onTap: () {
                        var bottomSheetController = scaffoldKey.currentState!
                            .showBottomSheet((context) => Container(
                                  child: getBottomSheet(
                                      "28.65447393900712, 77.268066413013"),
                                  height: 250,
                                  color: Colors.transparent,
                                ));
                      },
                      snippet: "Camera 01 location"));

              Marker marker2 = Marker(
                markerId: markerId2,
                position: LatLng(28.654523324699515, 77.26768766088398),
                icon: BitmapDescriptor.defaultMarkerWithHue(
                    BitmapDescriptor.hueGreen),
              );
              Marker marker3 = Marker(
                  markerId: markerId3,
                  position: LatLng(28.654523324699515, 77.26768766088398),
                  infoWindow: InfoWindow(
                      title: "camera 2 $now.hour",
                      onTap: () {},
                      snippet: "CAMERA 02"));

              setState(() {
                markers[markerId1] = marker1;
                markers[markerId2] = marker2;
                markers[markerId3] = marker3;
              });
            },
          ),
        ));
  }

  Widget getBottomSheet(String s) {
    return Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 32),
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Container(
                color: Colors.blueAccent,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "netaji subhash university of technology",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: <Widget>[
                          Text("4.5",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12)),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text("feed-- action  ",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14))
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("$now.hour",
                          style: TextStyle(color: Colors.white, fontSize: 14)),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.map,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text("$s")
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.call,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text("CONTACT NEAREST POLICE STATION  DIAL 100")
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.topRight,
            child: FloatingActionButton(
                child: Icon(Icons.navigation), onPressed: () {}),
          ),
        )
      ],
    );
  }
}
