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
  var bigSlide;
  var smallSlide01;
  var smallSlide02;
  var smallSlide03;
  var small;
  var allMovie;
  final _controller = new PageController();

  @override
  void initState() {
    super.initState();
    allMovie = updateMovie(widget.data);
    //updateMovie(widget.data);
    print(rotate[0]['Title']);
    print('debug');
    print(rotate.length);
    print(rotate[0]['Poster']);
    print(allMovie[0][0]['Title']);
  }

  List updateMovie(dynamic dataMovie) {
    rotate = jsonDecode(dataMovie)[0]['movies'];
    smallSlide01 = jsonDecode(dataMovie)[1]['movies'];
    smallSlide02 = jsonDecode(dataMovie)[2]['movies'];
    bigSlide = jsonDecode(dataMovie)[3]['movies'];
    smallSlide03 = jsonDecode(dataMovie)[4]['movies'];
    small = jsonDecode(dataMovie)[5]['movies'];
    return [rotate, smallSlide01, smallSlide02, bigSlide,smallSlide03 ,small];
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
                        itemCount: allMovie[0].length,
                        itemBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            height: 450.0,
                            child: Card(
                              margin: EdgeInsets.all(10.0),
                              child:
                                  Image.network(allMovie[0][index]['Poster']),
                            ),
                          ); //Poster[index % _pages.length];
                        },
                      ),
                    ),
                    SmoothPageIndicator(
                      controller: _controller,
                      count: allMovie[0].length,
                      effect: WormEffect(),
                    ),
                  ],
                ),
              ),
              Text(
                'Big Slide',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 500.0,
                child: ListView.builder(
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: allMovie[3].length,
                  itemBuilder: (BuildContext context, int index) => Card(
                    child: Center(
                        child: Image.network(allMovie[3][index]['Poster'])),
                  ),
                ),
              ),
              Text(
                'Small Slide 1',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 200.0,
                child: ListView.builder(
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: allMovie[1].length,
                  itemBuilder: (BuildContext context, int index) => Card(
                    child: Center(
                        child: Image.network(allMovie[1][index]['Poster'])),
                  ),
                ),
              ),
              Text(
                'Small Slide 2',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 200.0,
                child: ListView.builder(
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: allMovie[2].length,
                  itemBuilder: (BuildContext context, int index) => Card(
                    child: Center(
                        child: Image.network(allMovie[2][index]['Poster'])),
                  ),
                ),
              ),
              Text(
                'Small Slide 3',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 200.0,
                child: ListView.builder(
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: allMovie[4].length,
                  itemBuilder: (BuildContext context, int index) => Card(
                    child: Center(
                        child: Image.network(allMovie[4][index]['Poster'])),
                  ),
                ),
              ),
              Text('Small'),
              SizedBox(
                height: 500.0,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio:  2/3,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 10),
                  shrinkWrap: true,
                  itemCount: allMovie[5].length,
                  itemBuilder: (BuildContext context, int index) => Card(
                    child: Center(
                        child: Image.network(allMovie[5][index]['Poster'])),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//https://gdb.voanews.com/BE8893DB-40FA-4DE0-BDBE-F62003D554C5_w408_r0_s.jpg
