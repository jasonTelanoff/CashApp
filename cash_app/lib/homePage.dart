import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_audio_player/flutter_audio_player.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("This is a CASH App"))),
      body: Stack(
        children: <Widget>[
          ListView(
            children: <Widget>[
              Image.asset('assets/images/cash.jpg'),
              TextField(
                decoration: InputDecoration(hintText: "Dollars to Pounds"),
                onSubmitted: (String value) async {
                  var currency = double.parse(value);
                  currency = (currency * 0.80);
                  await showDialog<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('dinero'),
                        content: Text(currency.toStringAsFixed(2)+"£"),
                        actions: <Widget>[
                          FlatButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('OK'),
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
              Image.asset('assets/images/cash.jpg'),
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(bottom: 420,right: 205 ),
            child: FlatButton(
              color: Color(0xddffffff),
              onPressed: _launchURL,
              child: Center(
                  child: Text(
                'Tap here to buy merch',
                textScaleFactor: 2,
              )),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(bottom: 420,left: 205 ),
            child: FlatButton(
              color: Color(0xddffffff),
              onPressed: () {SoundPlayerUtil.addSoundName("cash.mp3");},
              child: Center(
                  child: Text(
                'Cash Beats',
                textScaleFactor: 2,
              )),
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

class SoundPlayerUtil {
    static void addSoundName(String name) {
      AudioPlayer.addSound('assets/audio/' + name);
    }

    static void removeAllSound() {
      AudioPlayer.removeAllSound();
    }
}