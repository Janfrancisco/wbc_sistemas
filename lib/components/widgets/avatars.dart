import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String image;
  const Avatar({
    Key key,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.asset('$image'),
    );
  }
}
