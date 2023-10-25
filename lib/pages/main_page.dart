import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:imageconverter/components/convert_button.dart';
import 'package:imageconverter/components/converted_frame.dart';
import 'package:imageconverter/components/upload_button.dart';
import 'package:imageconverter/pages/converted_page.dart';
import '../models/image_model.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final List pic = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        title: Center(
            child: Text("Image Converter",
                style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 30))),
      ),
      body: Consumer<ImageModel>(
        builder: (context, imageModel, child) {
          return Column(
            children: [
              SizedBox(height: 30),
              converted_frame(),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: UploadButton(),
                ),
                if (context.read<ImageModel>().getRes() != null)
                  ConvertButton(nextPage: ConvertedPage())
              ])
            ],
          );
        },
      ),
    );
  }
}
