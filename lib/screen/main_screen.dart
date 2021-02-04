import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:ui';
import 'dart:convert';
import 'dart:math';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({this.data});

  final data;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
  var rotate;
  final _controller = new PageController();

  @override
  void initState() {
    super.initState();

    updateMovie(widget.data);
    print(rotate[0]['Title']);
    print('debug');
    print(rotate.length);
    print(rotate[0]['Poster']);
  }

  void updateMovie(dynamic dataRotate) {
    rotate = jsonDecode(dataRotate)[0]['movies'];
    return rotate;
  }

  // Map<String, dynamic> movie1 = jsonDecode(data)[0]['movies'][0]['Title'];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white70,
        appBar: AppBar(
          title: Text('Netflax'),
          centerTitle: true,
          backgroundColor: Colors.red,
          leading: Icon(Icons.dehaze),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                // movie1
                'Rotate',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 490.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 450.0,
                      child: PageView.builder(
                        physics: new AlwaysScrollableScrollPhysics(),
                        controller: _controller,
                        itemCount: rotate.length,
                        itemBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            height: 450.0,
                            child: Card(
                              margin: EdgeInsets.all(10.0),
                              child: Image.network(
                                  rotate[index]['Poster']),
                            ),
                          ); //Poster[index % _pages.length];
                        },
                      ),
                    ),
                    // Container(
                    //   height: 50.0,
                    //   color: Colors.white12,
                    //   padding: const EdgeInsets.all(20.0),
                    //   child: new Center(
                    //     child: new DotsIndicator(
                    //       controller: _controller,
                    //       itemCount: rotate.length,
                    //       onPageSelected: (int index) {
                    //         _controller.animateToPage(
                    //           index,
                    //           duration: Duration(milliseconds: 500),
                    //           curve: Curves.ease,
                    //         );
                    //       },
                    //     ),
                    //   ),
                    // ),
                    SmoothPageIndicator(
                        controller: _controller,
                        count: rotate.length,
                    effect: WormEffect(),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 200.0,
                child: ListView.builder(
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) => Card(
                    child: Center(
                      child: Image.network(rotate[index]['Poster']),
                    ),
                  ),
                ),
              ),
              Text(
                'Big Slide',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 200.0,
                child: ListView.builder(
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 15,
                  itemBuilder: (BuildContext context, int index) => Card(
                    child: Center(child: Text('Dummy Card Text')),
                  ),
                ),
              ),
              Text(
                'Small Slide 1',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 130.0,
                child: ListView.builder(
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 15,
                  itemBuilder: (BuildContext context, int index) => Card(
                    child: Center(child: Text('Dummy Card Text')),
                  ),
                ),
              ),
              Text(
                'Small Slide 2',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 130.0,
                child: ListView.builder(
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 15,
                  itemBuilder: (BuildContext context, int index) => Card(
                    child: Center(child: Text('Dummy Card Text')),
                  ),
                ),
              ),
              Text(
                'Small Slide 3',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 130.0,
                child: ListView.builder(
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 15,
                  itemBuilder: (BuildContext context, int index) => Card(
                    child: Center(child: Text('Dummy Card Text')),
                  ),
                ),
              ),
              Text('Small'),
              SizedBox(
                  height: 200.0,
                  width: 200.0,
                  child: GridView.count(
                    primary: false,
                    padding: const EdgeInsets.all(20),
                    crossAxisSpacing: 3,
                    mainAxisSpacing: 3,
                    crossAxisCount: 2,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: const Text("He'd have you all unravel at the"),
                        color: Colors.teal[100],
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: const Text('Heed not the rabble'),
                        color: Colors.teal[200],
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: const Text('Sound of screams but the'),
                        color: Colors.teal[300],
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: const Text('Who scream'),
                        color: Colors.teal[400],
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
//https://gdb.voanews.com/BE8893DB-40FA-4DE0-BDBE-F62003D554C5_w408_r0_s.jpg
