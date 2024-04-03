import 'package:flutter/material.dart';

class BusinessCardPage extends StatelessWidget {
  const BusinessCardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.black,
        ),
        title: Text('jam_man_bo'),
        actions: [
          IconButton(
            icon: Icon(Icons.menu_rounded),
            onPressed: () {},
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 8, left: 24, right: 24),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipOval(
                  child: Image.network(
                      'https://img.hankyung.com/photo/202307/AKR20230719120700017_02_i_P4.jpg',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                _numAndTitle(118, '게시물'),
                _numAndTitle(273, '팔로워'),
                _numAndTitle(794, '팔로잉'),
              ],
            ),
            Align(
              alignment: Alignment.centerLeft,
                child: Text('잠만보', style: TextStyle(fontSize: 18),)),
            SizedBox(height: 4),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('@ jam_man_bo'),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color(0xffefefef)
                  )
                ),
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text('개인 블로그', style: TextStyle(fontSize: 18, color: Color(0xff0d3c61)),)),
            Align(
                alignment: Alignment.centerLeft,
                child: Text('잠만보입니다.\nZzzz\nZzzz', style: TextStyle(fontSize: 18))),
            Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Icon(Icons.link_sharp, color: Color(0xff0d3c61),),
                    Text('linktr.ee/jam_man_bo', style: TextStyle(fontSize: 18, color: Color(0xff0d3c61))),
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
                    SizedBox(width: 12),
                    Text('pika._.chu님이 팔로우합니다', style: TextStyle(fontSize: 15)),
                  ],
                )),
          ],
        ),
      )
    );
  }

  Widget _numAndTitle(int num, String title) {
    return Column(
      children: [
        Text('$num', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
        Text('$title', style: TextStyle(fontSize: 16))
      ],
    );
  }
}
