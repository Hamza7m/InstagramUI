import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

final index = 2;

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    color: Colors.black,
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Container(
                    width: 25,
                    height: 20,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.white60,
                        border: Border.all(width: 1.2, color: Colors.black),
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                        child: Text(
                      ' + ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.ondemand_video_rounded,
                    color: Colors.black,
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.account_circle_outlined,
                    color: Colors.black,
                  ),
                  label: '')
            ],
          ),
          body: Column(
            children: [
              Container(
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 9,
                  itemBuilder: (context, index) {
                    return _Story(i: index);
                  },
                ),
              ),
              Expanded(
                  child: Container(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Squire(num: index);
                  },
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}

class _Story extends StatelessWidget {
  @override
  final i;

  _Story({@required this.i});

  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        (Container(
          height: 90,
          width: 100,
          decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              border: Border.all(width: 2.5, color: Colors.red)),
          child: CircleAvatar(
            backgroundImage: AssetImage(
              "assets/img/img${i}.jpg",
            ),
          ),
        )),
        Container(
          child: Text(
            "Name",
            style: TextStyle(),
          ),
        )
      ],
    );
  }
}

class Squire extends StatelessWidget {
  int num;

  Squire({required this.num});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
            height: 350,
            color: Colors.purple,
            margin: EdgeInsets.only(bottom: 10, top: 0),
            child: Image(
              image: AssetImage('assets/img/img${num}.jpg'),
              fit: BoxFit.cover,
            )),
        Container(
            child: Row(
          // here for icons
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                child: Row(
              // first three icons
              children: [
                IconButton(
                  onPressed: null,
                  icon: Icon(Icons.favorite_outline),
                ),
                IconButton(
                  onPressed: null,
                  icon: Icon(Icons.add_comment_rounded),
                ),
                IconButton(
                  onPressed: null,
                  icon: Icon(Icons.forward_10_rounded),
                )
              ],
            )),
            Container(
                child: IconButton(
              onPressed: null,
              icon: Icon(Icons.save_alt_outlined),
            ))
          ],
        ))
      ],
    );
  }
}
