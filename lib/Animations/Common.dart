import 'package:flutter/material.dart';

abstract class CommonAnimation extends StatelessWidget {
  BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Material();
  }
}

class LearnAnimation {
  final String name;
  final CommonAnimation pageObj;

  LearnAnimation(this.name, this.pageObj);
}
