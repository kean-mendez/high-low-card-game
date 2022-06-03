import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hi_low_card_game/home.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  await init(null);
  runApp(const GameApp());
}

Future init(BuildContext? context) async {
  await Future.delayed(const Duration(milliseconds: 2000));
}

class GameApp extends StatelessWidget {
  const GameApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
