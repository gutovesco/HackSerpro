import 'package:flutter/material.dart';
import 'package:megahack/pages/main/home_screen.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MaterialApp(
    home: MegaHack(),
    debugShowCheckedModeBanner: false,
  ));
}

class MegaHack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 6,
      navigateAfterSeconds: new AfterSplash(),
      title: new Text('Bem vindo, Samuel!',
        style: new TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 36.0,
        ),
      ),
      image: Image.asset('assets/images/Local_Market_Principal.png'),
      styleTextUnderTheLoader: new TextStyle(),
      loaderColor: Colors.blue,
      photoSize: 100,
    );
  }
}

class AfterSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));

  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF' + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }
}
