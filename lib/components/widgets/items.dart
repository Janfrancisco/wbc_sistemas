import 'package:flutter/material.dart';
import 'package:wbc_sistemas/components/widgets/avatars.dart';

class Items extends StatelessWidget {
  final String image;
  final String text;

  const Items({Key key, this.image, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            '$text',
            style: TextStyle(
                fontFamily: 'Futura-LT',
                fontSize: 20,
                color: Color(0xff7AD3F4)),
          ),
          SizedBox(
            height: 10,
          ),
          Avatar(
            image: '$image',
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
