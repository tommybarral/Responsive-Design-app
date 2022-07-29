import 'package:flutter/material.dart';

class Device extends StatelessWidget {

  final Widget smallSize;
  final Widget mediumSize;
  final Widget largeSize;

  const Device({Key? key,
    required this.smallSize,
    required this.mediumSize,
    required this.largeSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth <= 500) {
              return smallSize;
            } else if (constraints.maxWidth <= 1000) {
              return mediumSize;
            } else {
              return largeSize;
            }
          }),
    );
  }
}
