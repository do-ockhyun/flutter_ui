import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(30),
          child: Image.asset(
            "logo.jpg",
            fit: BoxFit.cover,
          ),
        ),
        const Text(
          "Flutter GYM - UI",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('pop'))
      ]),
    );
  }
}
