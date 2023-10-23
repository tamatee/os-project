import 'package:flutter/material.dart';
import 'package:suntana/components/download_button.dart';
import 'package:suntana/components/reset_button.dart';
import 'main_page.dart';

class ConvertedPage extends StatelessWidget {
  const ConvertedPage({super.key});

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
                ResetButton(nextPage: MainPage()),
                SizedBox(width: 20),
                DownloadButton(),
              ],
            )
          ]),
        ),
      );
  }
}