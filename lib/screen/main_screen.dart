import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:ui';
import 'dart:convert';

class MyHomePage extends StatefulWidget {
  MyHomePage({this.data});
  final data;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
var rotate;
  @override
  void initState() {
    super.initState();
// var data1 = jsonDecode(widget.data)[0]['movies'][0]['Title'];
//     print(widget.data);
//     Map<String, dynamic> rotate = jsonDecode(widget.data)[0]['movies'][0];
    // List rotage1 = jsonDecode(widget.data)[0]['movies'];
    // Map<String , dynamic> avent = rotage1[5];
    // print('debug');
    // print(data1);
    // print('debug0');
    // print(rotage1[0]['Title']);
    // print('debug1');
    // print(avent['Poster']);
    // updateMovie(rotage1);
    updateMovie(widget.data);
    print(rotate[0]['Title']);
  }
  void updateMovie(dynamic dataRotate){
    rotate = jsonDecode(dataRotate)[0]['movies'];
    return rotate;
  }
  // Map<String, dynamic> movie1 = jsonDecode(data)[0]['movies'][0]['Title'];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                height: 200.0,
                child: ListView.builder(
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) => Card(
                    child: Center(
                      child: Image.network(rotate[index]['Poster']),),
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
               )
             ),
            //   Column(
            //     children: [
            //       GridView.count(
            //         primary: false,
            //         padding: const EdgeInsets.all(20),
            //         crossAxisSpacing: 10,
            //         mainAxisSpacing: 10,
            //         crossAxisCount: 1,
            //         children:[
            //           Container(
            //             padding: const EdgeInsets.all(8),
            //             child: const Text("He'd have you all unravel at the"),
            //             color: Colors.teal[100],
            //           ),
            //           ],
            //   )
            // ],
            //   ),
            ],
          ),
        ),
      ),
    );
  }
}
//https://gdb.voanews.com/BE8893DB-40FA-4DE0-BDBE-F62003D554C5_w408_r0_s.jpg
