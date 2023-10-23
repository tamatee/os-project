import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageModel extends ChangeNotifier {
  XFile? image;
  final ImagePicker picker = ImagePicker();

  Future setImage() async {
    var img = await picker.pickImage(source: ImageSource.gallery);
    image = img;
    notifyListeners();
  }

  XFile? getImage() {
    return image;
  }

  void resetImage() {
    image = null;
    notifyListeners();
  }
}