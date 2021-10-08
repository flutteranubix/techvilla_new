import 'package:flutter/material.dart';
import 'package:tech_villa_store/pages/home-page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tech Villa Store ',
      theme: ThemeData(
      
        primarySwatch: Colors.orange
      ),
      home: HomeScreen(),
    );
  }
}
