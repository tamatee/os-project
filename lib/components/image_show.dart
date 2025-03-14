import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/image_model.dart';

class ImageFrame extends StatelessWidget {
  const ImageFrame({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.network(context.read<ImageModel>().getRes()!),
      ),
    );
  }
}
