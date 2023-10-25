import 'package:flutter/material.dart';
import 'package:imageconverter/components/download_button.dart';
import 'package:imageconverter/components/download_frame.dart';
import 'package:imageconverter/components/reset_button.dart';
import 'main_page.dart';

class ConvertedPage extends StatelessWidget {
  const ConvertedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        title: Center(
            child: Text(
          "Image Converter",
          style: TextStyle(
              color: Colors.red, fontWeight: FontWeight.bold, fontSize: 30),
        )),
      ),
      body: Center(
        child: Column(children: [
          SizedBox(height: 30),
          download_frame(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: ResetButton(nextPage: MainPage()),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: DownloadButton(),
              ),
            ],
          ),
          SizedBox(height: 30),
          Center(
            child: Text(
              'Your photo has been converted successfully',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: 20),
            ),
          )
        ]),
      ),
    );
  }
}
