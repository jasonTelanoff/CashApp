import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("This is a CASH App")),
      body: Stack(
        children: <Widget>[
          Image.asset('assets/images/cash.jpg')
          Text("\$ € £ ¥ лв CHF Kč kr kn ₾ ft kr zł ₽ lei kr ₺ ₴ \$ € £ ¥ лв CHF Kč kr kn ₾ ft kr zł ₽ lei kr ₺ ₴ \$ € £ ¥ лв CHF Kč kr kn ₾ ft kr zł ₽ lei kr ₺ ₴ \$ € £ ¥ лв CHF Kč kr kn ₾ ft kr zł ₽ lei kr ₺ ₴\$ € £ ¥ лв CHF Kč kr kn ₾ ft kr zł ₽ lei kr ₺ ₴ \$ € £ ¥ лв CHF Kč kr kn ₾ ft kr zł ₽ lei kr ₺ ₴ \$ € £ ¥ лв CHF Kč kr kn ₾ ft kr zł ₽ lei kr ₺ ₴ \$ € £ ¥ лв CHF Kč kr kn ₾ ft kr zł ₽ lei kr ₺ ₴ \$ € £ ¥ лв CHF Kč kr kn ₾ ft kr zł ₽ lei kr ₺ ₴ \$ € £ ¥ лв CHF Kč kr kn ₾ ft kr zł ₽ lei kr ₺ ₴ \$ € £ ¥ лв CHF Kč kr kn ₾ ft kr zł ₽ lei kr ₺ ₴ \$ € £ ¥ лв CHF Kč kr kn ₾ ft kr zł ₽ lei kr ₺ ₴ \$ € £ ¥ лв CHF Kč kr kn ₾ ft kr zł ₽ lei kr ₺ ₴ \$ € £ ¥ лв CHF Kč kr kn ₾ ft kr zł ₽ lei kr ₺ ₴ \$ € £ ¥ лв CHF Kč kr kn ₾ ft kr zł ₽ lei kr ₺ ₴ \$ € £ ¥ лв CHF Kč kr kn ₾ ft kr zł ₽ lei kr ₺ ₴", textScaleFactor: 2, style: TextStyle(color: Color(0x99000000))),
          Center(
            child: Text("This is a CASH App", textScaleFactor: 5,),
          ),
        ],
      ),
    );
  }
}