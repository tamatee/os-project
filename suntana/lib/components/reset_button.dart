import 'package:flutter/material.dart';

class ResetButton extends StatelessWidget {
  Widget nextPage;
  ResetButton({super.key, required this.nextPage});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushAndRemoveUntil(context,
            MaterialPageRoute(builder: (BuildContext context) {
          return nextPage;
        }), (route) => false);
      },
      child: Container(
        width: 120,
        height: 50,
        decoration: BoxDecoration(color: Colors.amber[300]),
        child: const Center(
          child: Text("Reset"),
        ),
      ),
    );
  }
}
