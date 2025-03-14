import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:imageconverter/models/image_model.dart';

class UploadButton extends StatefulWidget {
  const UploadButton({super.key});

  @override
  State<UploadButton> createState() => _UploadButtonState();
}

class _UploadButtonState extends State<UploadButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            context.read<ImageModel>().uploadFile();
            if (context.read<ImageModel>().getRes() != null) {
              context.read<ImageModel>().resetImage();
            }
            context.read<ImageModel>().setImage();
          },
          child: Center(
            child: Container(
              width: 120,
              height: 50,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.orange, Colors.red],
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  "Upload",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
