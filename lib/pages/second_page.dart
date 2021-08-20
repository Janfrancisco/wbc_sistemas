import 'package:flutter/material.dart';
import 'package:wbc_sistemas/pages/thrid_page.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      setState(() {
        Navigator.of(context).pushReplacement(PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => ThirdPage(),
          transitionDuration: Duration(milliseconds: 1500),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            animation =
                CurvedAnimation(curve: Curves.easeIn, parent: animation);
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        ));
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Center(
              child: Text(
        'Bemvindo a WBC Sistemas',
        style: TextStyle(fontSize: 28, color: Color(0xff4592ce)),
      ))),
    );
  }
}
