import 'package:flutter/material.dart';

class AnimationOpacity extends StatelessWidget {
  const AnimationOpacity({Key key, this.isVisible}) : super(key: key);
  final bool isVisible;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        width: width * 0.65,
        child: Image(image: AssetImage('assets/images/logo4.webp')),
      ),
    );
  }
}
