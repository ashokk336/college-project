import 'package:flutter/material.dart';

Color scaffoldBackgroundColor = Color.fromARGB(255, 94, 96, 118);
Color cardColor = Color.fromARGB(255, 116, 120, 145);
Color splashcardColor = Color.fromARGB(255, 130, 137, 183);

nextSecreen(context, page) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => page));
}

nextSecreenReplacement(context, page) {
  Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (context) => page));
}
