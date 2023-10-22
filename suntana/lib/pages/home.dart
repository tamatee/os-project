import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 40,),
            buttonBar()
          ]
        ),
      )
    );
  }
  Container buttonBar(){
    return Container(
      height: 50,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color.fromARGB(255, 113, 237, 19),
      ),
      child: Text(
        'asdad',
        
      ),
    );
  }
  AppBar appBar(){
    return AppBar(title: Text('Image Convert',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
      );
  }
}