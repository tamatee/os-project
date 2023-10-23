import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/image_model.dart';

class ResetButton extends StatelessWidget {
  Widget nextPage;
  ResetButton({super.key, required this.nextPage});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<ImageModel>().resetImage();
        Navigator.pushAndRemoveUntil(context,
            MaterialPageRoute(builder: (BuildContext context) {
          return nextPage;
        }), (route) => false);
      },
      child: Center(
        child: Container(
          width: 120,
          height: 50,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors:[Colors.blue,Colors.purple]
            ),
            borderRadius: BorderRadius.circular(10)
          ),
          child: const Center(
            child: Text("Reset",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
