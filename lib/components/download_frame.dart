import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:imageconverter/components/checkphoto.dart';
import 'package:imageconverter/models/image_model.dart';

class download_frame extends StatefulWidget {
  download_frame({super.key});

  @override
  State<download_frame> createState() => squareFrame();
}

class squareFrame extends State<download_frame> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(28.0),
        child: Center(
          child: GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: () {
                // wait backN finish download
                if (context.read<ImageModel>().getRes() != null) {
                  context.read<ImageModel>().resetImage();
                }
                context.read<ImageModel>().setImage();
              },
              child: Center(
                child: Container(
                  height: 300.0,
                  width: 200.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 246, 246, 246),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.11),
                            blurRadius: 40,
                            spreadRadius: 0.0)
                      ]),
                  child: Center(child: checkfoto()),
                ),
              )),
        ));
  }
}
