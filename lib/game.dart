// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:hi_low_card_game/home.dart';
import 'card.dart';

// ignore: must_be_immutable
class GameAppPage extends StatefulWidget {
  List randomCard = RandomCard.getRandomCard();
  List<String> guessed_cards;
  int score = 0;
  GameAppPage(this.guessed_cards, {super.key});

  @override
  State<GameAppPage> createState() => _GameAppPageState();
}

class _GameAppPageState extends State<GameAppPage> {
  void test(var c, var newcard) {
    if (c) {
      setState(() {
        widget.score += 1;
        widget.guessed_cards.insert(0, widget.randomCard[0]);
        widget.randomCard[0] = newcard[0];
        widget.randomCard[1] = newcard[1];
      });
    } else {
      setState(() {
        widget.score = 0;
        for (int i = 0; i < 5; i++) {
          widget.guessed_cards[0] = '';
        }
        widget.randomCard = newcard;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: [
              Align(
                alignment: const AlignmentDirectional(0, 0.75),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        List test_card = RandomCard.getRandomCard();
                        test(test_card[1] < widget.randomCard[1], test_card);
                      },
                      style: ElevatedButton.styleFrom(
                          fixedSize: const Size(100, 75),
                          primary: Colors.transparent,
                          side: const BorderSide(color: Colors.green),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0))),
                      child: const Text('LOW'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        List test_card = RandomCard.getRandomCard();
                        test(test_card[1] == widget.randomCard[1], test_card);
                      },
                      style: ElevatedButton.styleFrom(
                          fixedSize: const Size(100, 75),
                          primary: Colors.transparent,
                          side: const BorderSide(color: Colors.green),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0))),
                      child: const Text('EQUAL'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        List test_card = RandomCard.getRandomCard();
                        test(test_card[1] > widget.randomCard[1], test_card);
                      },
                      style: ElevatedButton.styleFrom(
                          fixedSize: const Size(100, 75),
                          primary: Colors.transparent,
                          side: const BorderSide(color: Colors.green),
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0))),
                      child: const Text('HIGH'),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0, 0.35),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(0.025),
                      height: 150,
                      width: 100,
                      child: widget.guessed_cards[0] == ''
                          ? Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.greenAccent,
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Colors.black, spreadRadius: 2)
                                  ]),
                            )
                          : Image.asset(widget.guessed_cards[0]),
                    ),
                    Container(
                      padding: const EdgeInsets.all(0.025),
                      height: 150,
                      width: 100,
                      child: widget.guessed_cards[1] == ''
                          ? Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.greenAccent,
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Colors.black, spreadRadius: 2)
                                  ]),
                            )
                          : Image.asset(widget.guessed_cards[1]),
                    ),
                    Container(
                      padding: const EdgeInsets.all(0.025),
                      height: 150,
                      width: 100,
                      child: widget.guessed_cards[2] == ''
                          ? Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.greenAccent,
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Colors.black, spreadRadius: 2)
                                  ]),
                            )
                          : Image.asset(widget.guessed_cards[2]),
                    ),
                    Container(
                      padding: const EdgeInsets.all(0.025),
                      height: 150,
                      width: 100,
                      child: widget.guessed_cards[3] == ''
                          ? Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.greenAccent,
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Colors.black, spreadRadius: 2)
                                  ]),
                            )
                          : Image.asset(widget.guessed_cards[3]),
                    ),
                    Container(
                      padding: const EdgeInsets.all(0.025),
                      height: 150,
                      width: 100,
                      child: widget.guessed_cards[4] == ''
                          ? Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.greenAccent,
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Colors.black, spreadRadius: 2)
                                  ]),
                            )
                          : Image.asset(widget.guessed_cards[4]),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.85, -0.95),
                child: Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.transparent,
                      border: Border.all(
                        width: 3,
                        color: Colors.green,
                      )),
                  child: Text(
                    'Score: ${widget.score}',
                    style: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0, -0.5),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 150,
                      height: 200,
                      child: Image.asset(
                        'ui/card_back.png',
                        alignment: Alignment.center,
                      ),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    SizedBox(
                      width: 150,
                      height: 200,
                      child: Image.asset(widget.randomCard[0]),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.85, -0.95),
                child: IconButton(
                  icon: const Icon(
                    Icons.home,
                    size: 50,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()));
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
