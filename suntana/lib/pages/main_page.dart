import 'package:flutter/material.dart';

import '../components/next_button.dart';
import '../components/upload_button.dart';
import 'converted_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Center(child: Text("Image Converter")),
        ),
        body: Center(
          child: Column(children: [
            SizedBox(height: 50),
            Container(
              width: 400,
              height: 300,
              decoration: BoxDecoration(color: Colors.amber),
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                UploadButton(),
                SizedBox(width: 20),
                NextButton(nextPage: ConvertedPage()),
              ],
            )
          ]),
        ),
      );
  }
}