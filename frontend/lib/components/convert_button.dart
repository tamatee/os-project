import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ConvertButton extends StatelessWidget {
  Widget nextPage;
  ConvertButton({super.key, required this.nextPage});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
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
              gradient: LinearGradient(colors: [Colors.green, Colors.yellow]),
              borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: Text(
              "Convert",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
