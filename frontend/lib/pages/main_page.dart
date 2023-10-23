import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:suntana/components/convert_button.dart';
import 'package:suntana/components/image_show.dart';
import 'package:suntana/components/upload_button.dart';
import 'package:suntana/pages/converted_page.dart';
import '../models/image_model.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Center(child: Text("Image Converter")),
      ),
      body: Consumer<ImageModel>(
        builder: (context, imageModel, child) {
          return ListView(
            children: [
              const SizedBox(height: 30),
              UploadButton(),
              const SizedBox(height: 30),

              //if image is not null then show the image
              context.read<ImageModel>().getImage() != null
                  ? const ImageFrame()
                  : const Text(
                      // else then show text
                      "Doesn't upload the image yet",
                      style: TextStyle(fontSize: 20),
                    ),
              const SizedBox(height: 30),

              // if image is not null then show the convert button
              context.read<ImageModel>().getImage() != null
                  ? ConvertButton(nextPage: const ConvertedPage())
                  : const Text(
                      // else the nshow text
                      "Please upload the image",
                      style: TextStyle(fontSize: 10),
                    ),
            ],
          );
        },
      ),
    );
  }
}
