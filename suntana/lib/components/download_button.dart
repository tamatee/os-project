import 'package:flutter/material.dart';

class DownloadButton extends StatelessWidget {
  const DownloadButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 120,
        height: 50,
        decoration: BoxDecoration(color: Colors.blue[300]),
        child: const Center(
          child: Text("Download"),
        ));
  }
}
