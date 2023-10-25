import 'dart:io';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:image/image.dart';
import 'package:image_picker/image_picker.dart';

class ImageModel extends ChangeNotifier {
  FilePickerResult? image;
  final ImagePicker picker = ImagePicker();
  FilePickerResult? result;

  Future setImage() async {
    result = await FilePicker.platform.pickFiles(type: FileType.image);
    image = result;
    // print(image!.path);
    notifyListeners();
    return result;
  }

  List<String?> getImage() {
    return result!.paths;
  }

  void resetImage() {
    image = null;
    notifyListeners();
  }

  // Future uploadFile() async {
  //   result = await FilePicker.platform.pickFiles(type: FileType.image);
  // }

  Future convertFile() async {
    // var dio = Dio();

    if (result != null) {
      final test = decodeJpg(result!.files.single.bytes!);

      // save to file
      final convertedFile = File('ooh.png');
      convertedFile.writeAsBytesSync(encodePng(test!));
      print("Convert completed");

      Uint8List? fileBytes = convertedFile.readAsBytesSync();
      String filename = convertedFile.toString();

      print(filename);

      // FormData data = FormData.fromMap({
      //   "key": "5e621abb741e209c762ec4434643639d",
      //   // binary image data
      //   "image": await MultipartFile.fromBytes(fileBytes!, filename: filename),
      //   "name": "test"
      // });

      // var response = await dio.post("https://api.imgbb.com/1/upload",
      //     data: data, onSendProgress: (int sent, int total) {
      //   print("$sent $total");
      // });

      // print(response.data);
      // return response.data;
    }
  }
}
