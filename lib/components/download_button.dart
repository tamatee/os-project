import 'dart:html';

import 'package:flutter/material.dart';
import 'package:imageconverter/models/image_model.dart';
import 'package:provider/provider.dart';

class DownloadButton extends StatelessWidget {
  const DownloadButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        await downloadFile(context.read<ImageModel>().getRes()!);
      },
      child: Center(
        child: Container(
          width: 120,
          height: 50,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.red, Colors.yellow]),
              borderRadius: BorderRadius.circular(10)),
          child: const Center(
            child: Text(
              "Get Image",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }

  downloadFile(url) {
    AnchorElement anchorElement = new AnchorElement(href: url);
    anchorElement.download = "Flutter Logo";
    anchorElement.click();
  }
}
