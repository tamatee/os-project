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
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            if (context.read<ImageModel>().getImage() != null)
              context.read<ImageModel>().resetImage();
            context.read<ImageModel>().setImage();
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Container(
                width: 120,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.red[300],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text("Upload"),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
