import 'package:flutter/material.dart';
import 'package:suntana/components/download_button.dart';
import 'package:suntana/components/download_frame.dart';
import 'package:suntana/components/reset_button.dart';
import 'main_page.dart';

class ConvertedPage extends StatelessWidget {
  const ConvertedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        title: const Center(
          child: Text(
          "Image Converter",
          style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold,fontSize: 30),
        )),
      ),
        body: Center(
          child: Column(children: [
            const SizedBox(height: 30),
            download_frame(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ResetButton(nextPage: MainPage()),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DownloadButton(),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Center(
              child: Text('Your photo has been converted successfully',
              style: TextStyle(color:Colors.black,fontWeight: FontWeight.normal ,fontSize: 20), 
              ),
            )
          ]),
        ),
      );
  }
}