import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:just_audio/just_audio.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AudioPlayer player;

  @override
  void initState() {
    super.initState();
    player = AudioPlayer();
    player.setAsset("assets/audio/cash.mp3");
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("CASH APP"))),
      body: Stack(
        children: <Widget>[
          ListView(
            children: <Widget>[
              Image.asset('assets/images/cash.jpg'),
              TextField(
                decoration: InputDecoration(
                    hintText: "Dollars to Pounds",
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.black, width: 16.0))),
                onSubmitted: (String value) async {
                  var currency = double.parse(value);
                  currency = (currency * 0.80);
                  await showDialog<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('dinero'),
                        content: Text(currency.toStringAsFixed(2) + "£"),
                        actions: <Widget>[
                          FlatButton(
                            shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    color: Colors.black, width: 4.0)),
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
          Row(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height / 3,
                width: MediaQuery.of(context).size.width / 2,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.black, width: 4.0)),
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
                height: MediaQuery.of(context).size.height / 3,
                width: MediaQuery.of(context).size.width / 2,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.black, width: 4.0)),
                  color: Color(0xddffffff),
                  onPressed: () async {
                    await player.stop();
                    player.play();
                  },
                  child: Center(
                      child: Text(
                    'Cash Beats',
                    textScaleFactor: 2,
                  )),
                ),
              ),
            ],
          ),
          Positioned(
              bottom: 0.0,
              child: Center(
                  child: Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.black, width: 4.0)),
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
