import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:suntana/components/checkphoto.dart';
import 'package:suntana/models/image_model.dart';

class frame extends StatefulWidget {
  const frame({super.key});

  @override
  State<frame> createState() => squareFrame();
}

class squareFrame extends State<frame> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
                padding: const EdgeInsets.all(28.0),
                child: Center(
                  child: GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: (){
                      if (context.read<ImageModel>().getImage() != null)
                        context.read<ImageModel>().resetImage();
                      context.read<ImageModel>().setImage();
                    },
                    child:Center(
                      child: Container(
                        height: 300.0,
                        width: 200.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(255, 246, 246, 246),
                          // border: Border.all(
                          //   color: Colors.black,
                          //   width: 1
                          // )
                        ),
                        child: Center(
                          child: checkfoto()
                        ),
                      ),
                    )
                  ),
                )
              ); 
  }
}