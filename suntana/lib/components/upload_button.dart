import 'package:flutter/material.dart';

class UploadButton extends StatelessWidget {
  const UploadButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 120,
        height: 50,
        decoration: BoxDecoration(color: Colors.red[300]),
        child: const Center(
          child: Text("Upload"),
        ));
  }
}
