import 'package:flutter/material.dart';

class BirthdayCardPage1 extends StatelessWidget {
  final String toName;
  final String fromName;
  const BirthdayCardPage1({Key? key, required this.toName, required this.fromName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: const BackButton(
            color: Colors.black,
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 120),
            child: Column(
              children: [
                Text('Happy Birthday $toName!',
                  style: TextStyle(fontSize: 80),
                  textAlign: TextAlign.center,),
                Padding(
                  padding: const EdgeInsets.only(right: 40),
                  child: Align(alignment: Alignment.centerRight,
                      child: Text('From $fromName', style: TextStyle(fontSize: 30))
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
