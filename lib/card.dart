import 'dart:math';

class RandomCard {
  static int randomIndex = 0;
  static List cards = [
    ['assets/cards/2C.png', 2],
    ['assets/cards/2D.png', 2],
    ['assets/cards/2H.png', 2],
    ['assets/cards/2S.png', 2],
    ['assets/cards/3C.png', 3],
    ['assets/cards/3D.png', 3],
    ['assets/cards/3H.png', 3],
    ['assets/cards/3S.png', 3],
    ['assets/cards/4C.png', 4],
    ['assets/cards/4D.png', 4],
    ['assets/cards/4H.png', 4],
    ['assets/cards/4S.png', 4],
    ['assets/cards/5C.png', 5],
    ['assets/cards/5D.png', 5],
    ['assets/cards/5H.png', 5],
    ['assets/cards/5S.png', 5],
    ['assets/cards/6C.png', 6],
    ['assets/cards/6D.png', 6],
    ['assets/cards/6H.png', 6],
    ['assets/cards/6S.png', 6],
    ['assets/cards/7C.png', 7],
    ['assets/cards/7D.png', 7],
    ['assets/cards/7H.png', 7],
    ['assets/cards/7S.png', 7],
    ['assets/cards/8C.png', 8],
    ['assets/cards/8D.png', 8],
    ['assets/cards/8H.png', 8],
    ['assets/cards/8S.png', 8],
    ['assets/cards/9C.png', 9],
    ['assets/cards/9D.png', 9],
    ['assets/cards/9H.png', 9],
    ['assets/cards/9S.png', 9],
    ['assets/cards/10C.png', 10],
    ['assets/cards/10D.png', 10],
    ['assets/cards/10H.png', 10],
    ['assets/cards/10S.png', 10],
    ['assets/cards/AC.png', 1],
    ['assets/cards/AD.png', 1],
    ['assets/cards/AH.png', 1],
    ['assets/cards/AS.png', 1],
    ['assets/cards/JC.png', 11],
    ['assets/cards/JD.png', 11],
    ['assets/cards/JH.png', 11],
    ['assets/cards/JS.png', 11],
    ['assets/cards/QC.png', 12],
    ['assets/cards/QD.png', 12],
    ['assets/cards/QH.png', 12],
    ['assets/cards/QS.png', 12],
    ['assets/cards/KC.png', 13],
    ['assets/cards/KD.png', 13],
    ['assets/cards/KH.png', 13],
    ['assets/cards/KS.png', 13],
  ];

  static List getRandomCard() {
    randomIndex = Random().nextInt(13 * 4);
    return [cards[randomIndex][0], cards[randomIndex][1]];
  }
}
