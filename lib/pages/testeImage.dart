import 'package:flutter/material.dart';
import 'package:wbc_sistemas/components/widgets/avatars.dart';
import 'package:wbc_sistemas/components/widgets/items.dart';

class Teste extends StatelessWidget {
  const Teste({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage(
                          'assets/images/209715-meninos-versus-meninas-na-terceir.webp'))),
            ),
          ),
        ],
      ),
    );
  }
}

class Teste2 extends StatelessWidget {
  const Teste2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Items(
              image:
                  'assets/images/209715-meninos-versus-meninas-na-terceir.webp',
              text: 'greree',
            ),
          ],
        ),
      ),
    ));
  }
}
