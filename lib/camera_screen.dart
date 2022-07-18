import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:farghaly/select_image.dart';
import 'package:flutter/material.dart';

import 'api_manager.dart';

class WomenScreen extends StatefulWidget {
  const WomenScreen({Key? key}) : super(key: key);

  @override
  State<WomenScreen> createState() => _WomenScreenState();
}

class _WomenScreenState extends State<WomenScreen> {
  File? appleimage;
  Uint8List? result;
  bool loading = false;

  Future<void> _uploadImage(File personImage) async {
    setState(() {
      loading = true;
    });
    await ApiManger.uploadImageApi(appleimage!, (Uint8List bytes) {
      setState(() {
        loading = false;
        result = bytes;
      });
    }, () {
      setState(() {
        loading = false;
      });
    });
  }

  Uint8List dataFromBase64String(String base64String) {
    return base64Decode(base64String);
  }

  String base64String(Uint8List data) {
    return base64Encode(data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("Camera"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            SelectImage(afterSelectImage: (File pic) {appleimage = pic;}, fromGallery: true),
            SizedBox(height: 20),
            Container(
              child: MaterialButton(
                shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                color: Colors.green,
                onPressed: () async {
                  if (appleimage != null) {
                    await _uploadImage(appleimage!);
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      duration: Duration(seconds: 2),
                      content: Center(child: Text("Please Select Image")),
                    ));
                  }
                },
                child: const Text(
                  "Show Result",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

final List<String> imgListWomen = [
  "https://lcw.akinoncdn.com/products/2021/10/07/1556086/1d86bfc3-a56d-48a1-9f98-645ed6e59f18_size561x730.jpg",
  "https://lcw.akinoncdn.com/products/2022/04/12/3325949/68ad3bce-cae8-47d2-ba66-3a79ad7b6bce_size561x730.jpg",
  "https://lcw.akinoncdn.com/products/2022/04/08/3318191/f61c9d35-6685-47ca-baf1-b3649da4279f_size561x730.jpg",
  "https://lcw.akinoncdn.com/products/2022/04/01/3303016/665f29db-b5f6-4e60-b07d-c12c62fa7af2_size561x730.jpg",
];
