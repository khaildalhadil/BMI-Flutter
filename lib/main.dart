import 'package:bmi/import_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BMICaculater());
}

class BMICaculater extends StatelessWidget {
  const BMICaculater({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
          backgroundColor: const Color.fromARGB(255, 5, 16, 36),
          centerTitle: true,
        ),
        // scaffoldBackgroundColor: const Color.fromARGB(246, 10, 14, 33),
        // textTheme: TextTheme(bodyMedium: TextStyle(color: Colors.white)),
      ),
      home: InputPage(),
    );
  }
}
