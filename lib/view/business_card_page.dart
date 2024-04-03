import 'package:flutter/material.dart';

class BusinessCardPage extends StatelessWidget {
  const BusinessCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const BackButton(
            color: Colors.black,
          ),
          title: const Text('jam_man_bo'),
          actions: [
            IconButton(
              icon: const Icon(Icons.menu_rounded),
              onPressed: () {},
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 8, left: 24, right: 24),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _profileImage(''),
                  _numAndTitle(118, '게시물'),
                  _numAndTitle(273, '팔로워'),
                  _numAndTitle(794, '팔로잉'),
                ],
              ),
              _normalText('잠만보'),
              const SizedBox(height: 4),
              _threadBadge('jam_man_bo'),
              _linkText('개인 블로그'),
              _normalText('잠만보입니다.\nZzzz\nZzzz'),
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      Icon(
                        Icons.link_sharp,
                        color: Color(0xff0d3c61),
                      ),
                      Text('linktr.ee/jam_man_bo',
                          style: TextStyle(
                              fontSize: 18, color: Color(0xff0d3c61))),
                    ],
                  )),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      ClipOval(
                        child: Image.network(
                          'https://mblogthumb-phinf.pstatic.net/MjAxNzAyMjRfMjY1/MDAxNDg3OTI2NDcyNTc2.IYRdVib5YjSTBwEdn8CwDSPfmci95mdrTBdKHYYGn9Eg.aXZlXjQplS9Tk8WOdONlJAve8x5wPzwMBqG-xWM_g1sg.JPEG.citymedia1/2017-02-24_17-50-41.jpg?type=w800',
                          width: 30,
                          height: 30,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 12),
                      const Text('pika._.chu님이 팔로우합니다',
                          style: TextStyle(fontSize: 15)),
                    ],
                  )),
            ],
          ),
        ));
  }

  Widget _profileImage(String url) {
    return ClipOval(
      child: Image.network(
        'https://img.hankyung.com/photo/202307/AKR20230719120700017_02_i_P4.jpg',
        width: 100,
        height: 100,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _numAndTitle(int num, String title) {
    return Column(
      children: [
        Text(
          '$num',
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Text('$title', style: const TextStyle(fontSize: 16))
      ],
    );
  }

  Widget _normalText(String text) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Text(
          text,
          style: TextStyle(fontSize: 18),
        ));
  }

  Widget _linkText(String text) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Text(
          text,
          style: TextStyle(fontSize: 18, color: Color(0xff0d3c61)),
        ));
  }

  Widget _threadBadge(String id) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: const Color(0xffefefef)),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('@ jam_man_bo'),
          )),
    );
  }
}
