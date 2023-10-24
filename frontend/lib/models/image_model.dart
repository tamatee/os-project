import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:typed_data';
import 'package:file_picker/file_picker.dart';
import 'package:dio/dio.dart';

class ImageModel extends ChangeNotifier {
  XFile? image;
  final ImagePicker picker = ImagePicker();

  Future setImage() async {
    var img = await picker.pickImage(source: ImageSource.gallery);
    image = img;
    print(image!.path);
    notifyListeners();
  }

  XFile? getImage() {
    return image;
  }

  void resetImage() {
    image = null;
    notifyListeners();
  }

  Future uploadFile() async {
    var dio = Dio();

    FilePickerResult? result =
        await FilePicker.platform.pickFiles(type: FileType.image);

    if (result != null) {
      Uint8List? fileBytes = result.files.single.bytes;
      String filename = result.files.single.name;

      FormData data = FormData.fromMap({
        "key": "5e621abb741e209c762ec4434643639d",
        // binary image data
        "image": await MultipartFile.fromBytes(fileBytes!, filename: filename),
        "name": "test"
      });

      var response = await dio.post("https://api.imgbb.com/1/upload",
          data: data, onSendProgress: (int sent, int total) {
        print("$sent $total");
      });

      print(response.data);
      return response.data;
    } else {
      print("Result is null");
      return null;
    }
  }
}