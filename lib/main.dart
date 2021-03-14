import 'package:flutter/material.dart';
import 'package:this_is_flutter/config/palette.dart';

import 'screens/screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'THIS IS FLUTTER',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Palette.scaffold),
      home: HomeScreen()
    );
  }
}
