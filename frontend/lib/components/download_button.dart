import 'package:flutter/material.dart';
import 'package:image_downloader/image_downloader.dart';
import 'package:provider/provider.dart';
import 'package:suntana/models/image_model.dart';

class DownloadButton extends StatelessWidget {
  const DownloadButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        await ImageDownloader.downloadImage(
            context.read<ImageModel>().getRes()!);
      },
      child: Center(
        child: Container(
          width: 120,
          height: 50,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.red, Colors.yellow]),
              borderRadius: BorderRadius.circular(10)),
          child: const Center(
            child: Text(
              "Download",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
