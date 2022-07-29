import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import './device.dart';
import './small_size_screen.dart';
import './medium_size_screen.dart';
import './large_size_screen.dart';

/*
iPhone 13 mini : 375 width
iPhone 13 pro : 390 width
iPhone 13 pro max : 428 width
 */

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final platform = Theme.of(context).platform;
    //final android = TargetPlatform.android == platform;
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Device(
        smallSize: SmallSizeScreen(),
        mediumSize: MediumSizeScreen(),
        largeSize: LargeSizeScreen(),
      ),
    );

  }
}
