import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("This is a CASH App")),
      body: Stack(
        children: <Widget>[
          ListView(
            children: <Widget>[
              Image.asset('assets/images/cash.jpg'),
              Image.asset('assets/images/cash.jpg'),
              Image.asset('assets/images/cash.jpg'),
            ],
          ),
          Text(
              "\$ € £ ¥ лв CHF Kč kr kn ₾ ft kr zł ₽ lei kr ₺ ₴ \$ € £ ¥ лв CHF Kč kr kn ₾ ft kr zł ₽ lei kr ₺ ₴ \$ € £ ¥ лв CHF Kč kr kn ₾ ft kr zł ₽ lei kr ₺ ₴ \$ € £ ¥ лв CHF Kč kr kn ₾ ft kr zł ₽ lei kr ₺ ₴\$ € £ ¥ лв CHF Kč kr kn ₾ ft kr zł ₽ lei kr ₺ ₴ \$ € £ ¥ лв CHF Kč kr kn ₾ ft kr zł ₽ lei kr ₺ ₴ \$ € £ ¥ лв CHF Kč kr kn ₾ ft kr zł ₽ lei kr ₺ ₴ \$ € £ ¥ лв CHF Kč kr kn ₾ ft kr zł ₽ lei kr ₺ ₴ \$ € £ ¥ лв CHF Kč kr kn ₾ ft kr zł ₽ lei kr ₺ ₴ \$ € £ ¥ лв CHF Kč kr kn ₾ ft kr zł ₽ lei kr ₺ ₴ \$ € £ ¥ лв CHF Kč kr kn ₾ ft kr zł ₽ lei kr ₺ ₴ \$ € £ ¥ лв CHF Kč kr kn ₾ ft kr zł ₽ lei kr ₺ ₴ \$ € £ ¥ лв CHF Kč kr kn ₾ ft kr zł ₽ lei kr ₺ ₴ \$ € £ ¥ лв CHF Kč kr kn ₾ ft kr zł ₽ lei kr ₺ ₴ \$ € £ ¥ лв CHF Kč kr kn ₾ ft kr zł ₽ lei kr ₺ ₴ \$ € £ ¥ лв CHF Kč kr kn ₾ ft kr zł ₽ lei kr ₺ ₴",
              textScaleFactor: 2,
              style: TextStyle(color: Color(0x99000000))),
          Center(
            child: Text(
              "This is a CASH App",
              textScaleFactor: 5,
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(bottom: 300),
            child: FlatButton(
              color: Color(0x20ffffff),
              onPressed: _launchURL(), 
              child: Text('tap anywear to by merhc', textScaleFactor: 4,),
            ),
          ),
          Positioned(
              bottom: 0.0,
              child: Center(
                  child: Container(
                width: MediaQuery.of(context).size.width,
                height: 100,
                child: RaisedButton(
                  elevation: 200,
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(200, 100))),
                  color: Color(0xddffffff),
                  onPressed: () {
                    Share.share('CHECK OUT THIS CASH APP!!!! IT\'S NOT OUT YET',
                        subject: 'It\'s a CASH APP!!!!!!!!!');
                  },
                  child: Text("Share"),
                ),
              )))
        ],
      ),
    );
  }
}
_launchURL() async {
  const url = 'https://teespring.com/stores/cash-app';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
