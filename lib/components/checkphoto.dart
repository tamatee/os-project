import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:imageconverter/components/image_show.dart';
import 'package:imageconverter/models/image_model.dart';

class checkfoto extends StatefulWidget {
  checkfoto({super.key});

  @override
  State<checkfoto> createState() => showfoto();
}

class showfoto extends State<checkfoto> {
  @override
  Widget build(BuildContext context) {
    return context.read<ImageModel>().getRes() != null
        ? const ImageFrame()
        : const Text(
            // else then show text
            "Pls Upload your Photo",
            style: TextStyle(fontSize: 15),
          );
  }
}
