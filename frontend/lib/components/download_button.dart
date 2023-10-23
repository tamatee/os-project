import 'package:flutter/material.dart';

class DownloadButton extends StatelessWidget {
  const DownloadButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          width: 120,
          height: 50,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.red,Colors.yellow]),
            borderRadius: BorderRadius.circular(10)
          ),
          child: const Center(
            child: Text("Download",
              style: TextStyle(color: Colors.white),
            ),
          )
        ),
    );
  }
}
