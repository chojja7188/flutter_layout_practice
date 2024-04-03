import 'package:flutter/material.dart';
import 'package:flutter_layout_practice/view/birthday_card_page1.dart';
import 'package:flutter_layout_practice/view/birthday_card_page2.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => const BirthdayCardPage1(toName: 'Sam', fromName: 'Emma'))
                );
              }, child: const Text('생일 카드 예시1')),
              ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => const BirthdayCardPage2(toName: 'Sam', fromName: 'Emma'))
                );
              }, child: const Text('생일 카드 예시2')),
              ElevatedButton(onPressed: () {}, child: Text('생일 카드 예시3')),
              ElevatedButton(onPressed: () {}, child: Text('비즈니스 카드 예시'))
            ]
          )
        ),
      ),
    );
  }
}
