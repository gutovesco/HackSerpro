import 'package:flutter/material.dart';
import 'package:megahack/pages/lojas/cart_page.dart';
import 'package:megahack/pages/lojas/product_info.dart';
import 'package:panorama/panorama.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class PremiumFeature extends StatefulWidget {
  @override
  _PremiumFeatureState createState() => _PremiumFeatureState();
}

class _PremiumFeatureState extends State<PremiumFeature> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Panorama(
        animSpeed: 0.0,
        child: Image.asset('assets/360images/floricultura_360_1.jpg'),
      ),
      floatingActionButton: FloatingActionButton(
        mini: true,
        onPressed: () async {
          Alert(
            context: context,
            image: Image.asset("assets/products/product7.jpg"),
            title: 'Buquê Garden Flores do Campo - R\$ 55,00',
            desc:
                '\nEsse é o produto que você estava olhando mais de perto agorinha mesmo :)\n\nAdicione ao carrinho ou visite a página do produto.',
            buttons: [
              DialogButton(
                  color: Colors.orange,
                  width: 50.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.info,
                        size: 32,
                        color: Colors.white,
                      ),
                      Text(
                        'Ver produto',
                        style: TextStyle(fontSize: 18.0, color: Colors.white),
                      ),
                    ],
                  ),
                  onPressed: () {
                    Navigator.of(context, rootNavigator: true).pop();
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ProductInfo()));

                  }),
              DialogButton(
                color: Colors.green,
                width: 200.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.add_shopping_cart,
                        size: 32, color: Colors.white),
                    Text(
                      'Adicionar ao carrinho',
                      style: TextStyle(fontSize: 18.0, color: Colors.white),
                    ),
                  ],
                ),
                onPressed: () {
                  Navigator.of(context, rootNavigator: true).pop();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CartPage()));

                },
              ),
            ],
          ).show();
        },
        child: Icon(Icons.info_outline),
      ),
    );
  }
}
