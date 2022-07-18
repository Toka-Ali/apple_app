import 'dart:io';
import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';

class ApiManger {
  static Future<File> urlToFile(String imageUrl) async {
// generate random number.
    var rng = Random();
// get temporary directory of device.
    Directory tempDir = await getTemporaryDirectory();
// get temporary path from temporary directory.
    String tempPath = tempDir.path;
// create a new file in temporary path with random file name.
    File file = File(tempPath + (rng.nextInt(100)).toString());
// call http.get method and pass imageUrl into it to get response.
    http.Response response = await http.get(Uri.parse(imageUrl));
// write bodyBytes received in response to file.
    await file.writeAsBytes(response.bodyBytes);
// now return the file which is created with random name in
// temporary directory and image bytes from response is written to // that file.
    return file;
  }

  static Future<void> uploadImageApi(File appleimage,
      void Function(Uint8List) success, VoidCallback fail) async {
    String personImageApi = appleimage.path.split('/').last;

    FormData data = FormData.fromMap({
      "apple_image": await MultipartFile.fromFile(
        appleimage.path,
        filename: personImageApi,
      ),
    });

    Dio dio = Dio();
    String url = "http://36ef-34-143-249-175.ngrok.io";
    await dio
        .post(
      url + "/apply",
      data: data,
    )
        .then((response) async {
      var data = response.data as Map<String, dynamic>;
      var _imgString = data["result"];

      Uint8List bytes = const Base64Decoder().convert(_imgString);
      success(bytes);
    }).catchError((error) {
      fail();
    });
  }
}
