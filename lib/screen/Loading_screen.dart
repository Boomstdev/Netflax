import 'package:flutter/material.dart';
import 'package:netfake/screen/main_screen.dart';

import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:netfake/services/jsonNetwork.dart';


class loadingScreen extends StatefulWidget {
  @override
  _loadingScreenState createState() => _loadingScreenState();
}

class _loadingScreenState extends State<loadingScreen> {
  @override
  void initState(){
      super.initState();
      getMovieData();
  }
Future<void> getMovieData() async {
    JsonNetwork jsonData = JsonNetwork('https://jsonkeeper.com/b/BAYF?fbclid=IwAR0UMaUp2fC8r3g0T14N3b4GkM4XiSyW29IE83tMmD95HoOvEamdIz34Bd0');
var movieData = await jsonData.getData();
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return MyHomePage(data: movieData);
    }));
  }
  @override
  Widget build(BuildContext context) {
    // getData();
    return Scaffold(
      backgroundColor: Colors.white12,
      body: Center(
        child: SpinKitFadingFour(
          color: Colors.white,
          size: 100.0,
        ),
      ),
    );
  }
}
