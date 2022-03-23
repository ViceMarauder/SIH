//import 'package:csur/model/catlog.dart';
//import 'package:csur/model/catlog.dart';
//import 'package:csur/pages/feed.dart';
//import 'package:csur/widget/drawer.dart';//
//import 'package:csur/widget/iteam_widget.dart';
// import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
//import 'package:csur/main.dart';
//import 'package:material_color_utilities/material_color_utilities.dart';
//import 'dart:convert';
//import 'package:csur/model/catlog.dart';

class CameraFeeds extends StatefulWidget {
  const CameraFeeds({Key? key}) : super(key: key);

  @override
  State<CameraFeeds> createState() => _CameraFeedsState();
}

class _CameraFeedsState extends State<CameraFeeds> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  // loadData() async {
  //   await Future.delayed(Duration(seconds: 2));
  //   final catalogueJson =
  //       await rootBundle.loadString("lib/assets/files/catalogue.json");
  //   // print(catalogueJson);

  //   //decoding json string into another format(map)
  //   final decodedData = jsonDecode(catalogueJson);
  //   // print(decodedData);
  //   // if we have a map and we want to convert it to string -> jsonEncode()

  //   var productsData = decodedData["products"];
  //   // print(productsData);

  //   CatalogueModel.items = List.from(productsData)
  //       .map<Item>((item) => Item.fromMap(item))
  //       .toList();
  //   setState(() {});
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Catalogue App",
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: const Text("camera feed"),
          //   child:
          //       (CatalogueModel.items != null && CatalogueModel.items!.isNotEmpty)
          //           ? ListView.builder(
          //               // itemCount: CatalogueModel.items.length,
          //               itemCount: CatalogueModel.items?.length,
          //               itemBuilder: (context, index) => ItemWidget(
          //                 item: CatalogueModel.items![index],
          //               ),
          //             )
          //           : Center(
          //               child: CircularProgressIndicator(),
          //             ),
          // ),
        ));
  }
}
