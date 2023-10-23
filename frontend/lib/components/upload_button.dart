import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:suntana/models/image_model.dart';

class UploadButton extends StatefulWidget {
  UploadButton({super.key});

  @override
  State<UploadButton> createState() => _UploadButtonState();
}

class _UploadButtonState extends State<UploadButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (context.read<ImageModel>().getImage() != null)
          context.read<ImageModel>().resetImage();
        context.read<ImageModel>().setImage();
      },
      child: Container(
        width: 120,
        height: 50,
        decoration: BoxDecoration(color: Colors.red[300]),
        child: const Center(
          child: Text("Upload"),
        ),
      ),
    );
  }
}
