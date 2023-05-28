import 'dart:async';

import 'package:ece_gpt/constants/constants.dart';
import 'package:ece_gpt/screens/chat_screen.dart';
import 'package:ece_gpt/services/assets_manager.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () async {
      nextSecreenReplacement(context, ChatScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: splashcardColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 200),
              child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(AssetsManager.openaiLogo)),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "ECE ChatBOT",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
            ),
            Flexible(
              child: Container(),
              flex: 1,
            ),
            Text(
              "Powered by OpenAi",
              style: TextStyle(
                  fontSize: 17,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    );
  }
}
