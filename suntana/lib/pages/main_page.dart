import 'package:flutter/material.dart';
import 'package:suntana/pages/uploaded_page.dart';

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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                UploadButton(nextPage: UploadedPage()),
              ],
            )
          ]),
        ),
      );
  }
}