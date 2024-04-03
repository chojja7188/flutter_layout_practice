import 'dart:math';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class BirthdayCardPage3 extends StatelessWidget {
  final String toName;
  final String fromName;

  const BirthdayCardPage3(
      {super.key, required this.toName, required this.fromName});

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
                        padding: const EdgeInsets.only(top: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Happy Birthday $toName!',
                                style: TextStyle(fontSize: 34),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Align(
                                alignment: Alignment.center,
                                child: Text('from $fromName',
                                    style: TextStyle(fontSize: 20))),
                          ],
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: SizedBox(
                              width: 150,
                              height: 150,
                              child: Lottie.network(
                                  'https://lottie.host/3f7c0f73-a319-46c0-90ac-92dafb4fb3ec/yBaVS2Xd9j.json')),
                        ),
                        SizedBox(
                            width: 300,
                            child: Lottie.network(
                                'https://lottie.host/8adafb44-f603-427c-9c76-e39378a1f662/0A0K8dVynw.json')),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Transform(
                            alignment: Alignment.center,
                            transform: Matrix4.rotationY(pi),
                            child: SizedBox(
                                width: 150,
                                height: 150,
                                child: Lottie.network(
                                    'https://lottie.host/3f7c0f73-a319-46c0-90ac-92dafb4fb3ec/yBaVS2Xd9j.json')),
                          ),
                        )
                      ],
                    )
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
