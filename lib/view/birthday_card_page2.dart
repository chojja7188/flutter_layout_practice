import 'package:flutter/material.dart';

class BirthdayCardPage2 extends StatelessWidget {
  final String toName;
  final String fromName;

  const BirthdayCardPage2(
      {Key? key, required this.toName, required this.fromName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SafeArea(
          child: Stack(
            children: [
              Scaffold(
                appBar: AppBar(
                  leading: const BackButton(
                    color: Colors.black,
                  ),
                ),
                body: Stack(
                  children: [
                    Image.network(
                      'https://lh3.googleusercontent.com/xyW1MGibDmc3SDy2esX-yvObwIvAH16ucRPF2-x7qJmOYRJRRU_LpOvZbis6yDwavBITLUbYRkbKi7aAvSS0wfOL9-TsElDxWlzyaUPevURvORQqxw=w1400-v0',
                      height: MediaQuery.of(context).size.height,
                      fit: BoxFit.cover,
                    ),
                    SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 120),
                        child: Column(
                          children: [
                            Text(
                              'Happy Birthday $toName!',
                              style: TextStyle(fontSize: 80),
                              textAlign: TextAlign.center,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 40),
                              child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Text('From $fromName',
                                      style: TextStyle(fontSize: 30))),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
