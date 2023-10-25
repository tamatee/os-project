import 'dart:io';
import 'dart:convert';
import 'dart:typed_data';

import 'package:image/image.dart';
import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageModel extends ChangeNotifier {
  XFile? image;
  final ImagePicker picker = ImagePicker();
  static String? res;
  Future setImage() async {
    var img = await picker.pickImage(source: ImageSource.gallery);
    image = img;
    notifyListeners();
  }

  // String? getImage() {
  //   return image?.path;
  // }

  void resetImage() {
    res = null;
    notifyListeners();
  }

  String? getRes() {
    return res;
  }

  Future uploadFile() async {
    var dio = Dio();

    FilePickerResult? result =
        await FilePicker.platform.pickFiles(type: FileType.image);

    if (result != null) {
      Uint8List? fileBytes = result.files.single.bytes;
      String filename = result.files.single.name;
      final image = decodeJpg(fileBytes!);
      final send = encodePng(image!);
      fileBytes = send;

      FormData data = FormData.fromMap({
        "key": "5e621abb741e209c762ec4434643639d",
        // binary image data
        "image": await MultipartFile.fromBytes(fileBytes, filename: filename),
        "name": "test"
      });

      print("convert completed");

      var response = await dio.post("https://api.imgbb.com/1/upload",
          data: data, onSendProgress: (int sent, int total) {
        double process = (sent / total) * 100;
        print("PROCESS: $sent MAX_SIZE: $total :PROCESS:$process%");
      });
      var a = response.data.toString().split(" ");
      res = a[8].replaceAll(',', '');
      // print(res);

      // print(response.data);
      // return response.data;
    } else {
      print("Image NOT FOUND");
      // return null;
    }
    notifyListeners();
  }
}
