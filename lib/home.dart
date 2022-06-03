import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:double_back_to_close_app/double_back_to_close_app.dart';
import 'package:hi_low_card_game/card.dart';
import 'package:hi_low_card_game/game.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int score = 0;
  List randomCard = RandomCard.getRandomCard();
  List<String> guessedCards = ['', '', '', '', ''];
  Future helpDialog() => showDialog(
      context: context,
      builder: (context) => AlertDialog(
            title: const Text('How To Play', textAlign: TextAlign.center),
            content: const Text(
                'A card is shown and player has to guess whether the next card card is <,>, or = to the shown card.\n If the player guess it right, a point is added.'),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Got It!'))
            ],
          ));
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBodyBehindAppBar: true,
        body: DoubleBackToCloseApp(
          snackBar: const SnackBar(content: Text('Tap back again to exit')),
          child: Stack(
            children: <Widget>[
              Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/ui/bg.png'),
                        fit: BoxFit.cover)),
              ),
              Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/ui/logo.png'),
                        scale: 1.75,
                        alignment: Alignment(0, -0.75))),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100.0),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      GameAppPage(guessedCards)));
                        },
                        child: Image.asset(
                          'assets/ui/play.png',
                          scale: 1.5,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          helpDialog();
                        },
                        child: Image.asset(
                          'assets/ui/help.png',
                          scale: 1.5,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
