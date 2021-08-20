import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:wbc_sistemas/components/widgets/items.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key key}) : super(key: key);

  @override
  _ThirdPageState createState() => _ThirdPageState();
}

Future<void> _launchInBrowser(String url) async {
  if (await canLaunch(url)) {
    await launch(
      url,
      forceSafariVC: false,
      forceWebView: false,
    );
  } else {
    throw 'Could not launch $url';
  }
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff0D1637),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 80,
                ),
                SizedBox(
                  width: 300.0,
                  child: Center(
                    child: DefaultTextStyle(
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontFamily: 'Lato',
                      ),
                      child: AnimatedTextKit(
                        animatedTexts: [
                          TypewriterAnimatedText(
                            'Nossos segmentos',
                            speed: const Duration(milliseconds: 150),
                          ),
                        ],
                        repeatForever: true,
                        pause: Duration(seconds: 10),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Items(
                  image:
                      'assets/images/209715-meninos-versus-meninas-na-terceir.webp',
                  text: 'Escola de esporte & Cultura',
                ),
                SizedBox(
                  height: 50,
                ),
                Items(
                  image: 'assets/images/conjunto-aquatico.webp',
                  text: 'Gestão de Clubes',
                ),
                SizedBox(
                  height: 50,
                ),
                Items(
                  image:
                      'assets/images/gettyimages-477866453-e1527871244421.webp',
                  text: 'Gestão de Atacados e Varejo',
                ),
                SizedBox(
                  height: 50,
                ),
                Items(
                  image: 'assets/images/shutterstock_pfIsWAv.webp',
                  text: 'Comércio Exterior',
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  width: 200,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      _launchInBrowser('https://www.wbcsistemas.com');
                    },
                    child: Text('Saiba mais'),
                    style: ElevatedButton.styleFrom(
                        //primary: Colors.pink,
                        //fixedSize: Size(300, 100),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50))),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ));
  }
}
