import 'package:flutter/material.dart';
import 'package:flutter_ui/pages/intro.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const MyHomePage(),
      home: const IntroPage(),
    );
  }
}

class PageInfo {
  String name;
  Widget widget;

  PageInfo(this.name, this.widget);
}

List<PageInfo> _list = [PageInfo('intro', const IntroPage())];

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter GYM UI List"),
      ),
      body: ListView.builder(
          itemCount: _list.length,
          itemBuilder: (_, i) {
            return ListTile(
              title: Text(_list[i].name),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => _list[i].widget),
                );
              },
            );
          }),
    );
  }
}
