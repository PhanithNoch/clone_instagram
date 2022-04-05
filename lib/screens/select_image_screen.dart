import 'dart:io' as io;

import 'package:flutter/material.dart';
import 'dart:async';
import 'package:multi_image_picker2/multi_image_picker2.dart';
import 'package:permission_handler/permission_handler.dart';

class SelectImageScreen extends StatefulWidget {
  const SelectImageScreen({Key? key}) : super(key: key);

  @override
  State<SelectImageScreen> createState() => _SelectImageScreenState();
}

class _SelectImageScreenState extends State<SelectImageScreen> {
  List<Asset> images = <Asset>[];
  String _error = 'No Error Dectected';

  @override
  void initState() {
    loadAssets();
    super.initState();
  }

  _askPermission() async {
    if (io.Platform.isIOS) {
      var photosStatus = await Permission.photos.status;
      if (photosStatus.isDenied) {
        var photoStatus = await Permission.photos.request();
        print("Photos Permission Status" + photosStatus.toString());
      }
    } else {
      if (await Permission.storage.status.isDenied) {
        var storageStatus = await Permission.storage.request();
        print("Android Storage Permission Status: " + storageStatus.toString());
      }
    }
  }

  // Future<void> requestPermissionAndroid() async {
  //   if (io.Platform.isAndroid) {
  //     var status = await Permission.photos.status;
  //     if (status.isDenied) {
  //       // You can request multiple permissions at once.
  //       var statuses = await Permission.photos.request();
  //       print(statuses);
  //       openAppSettings();
  //       // We didn't ask for permission yet or the permission has been denied before but not permanently.
  //     }
  //   }
  // }

  /// preview images
  Widget buildGridView() {
    return GridView.count(
      crossAxisCount: 3,
      children: List.generate(images.length, (index) {
        Asset asset = images[index];
        return AssetThumb(
          asset: asset,
          width: 300,
          height: 300,
        );
      }),
    );
  }

  Future<void> loadAssets() async {
    _askPermission();
    List<Asset> resultList = <Asset>[];
    String error = 'No Error Detected';

    try {
      resultList = await MultiImagePicker.pickImages(
        maxImages: 300,
        enableCamera: true,
        selectedAssets: images,
        cupertinoOptions: CupertinoOptions(
          takePhotoIcon: "Take",
          doneButtonTitle: "Select",
        ),
        materialOptions: MaterialOptions(
          actionBarColor: "#abcdef",
          actionBarTitle: "Example App",
          allViewTitle: "All Photos",
          useDetailsView: true,
          selectCircleStrokeColor: "#000000",
        ),
      );
    } on Exception catch (e) {
      error = e.toString();
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      images = resultList;
      _error = error;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.close)),
                IconButton(
                    onPressed: () {
                      loadAssets();
                    },
                    icon: const Icon(Icons.add_a_photo)),
              ],
            ),
            Expanded(child: buildGridView()),
          ],
        ),
      ),
    );
  }
}
