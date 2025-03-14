import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:imageconverter/models/image_model.dart';
import 'pages/main_page.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ImageModel(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}
