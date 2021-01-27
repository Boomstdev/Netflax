import 'package:flutter/material.dart';
import 'package:netfake/screen/main_screen.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'dart:convert';

class loadingScreen extends StatefulWidget {
  @override
  _loadingScreenState createState() => _loadingScreenState();
}

class _loadingScreenState extends State<loadingScreen> {
  @override
  void initState(){
      super.initState();
      getData();
  }

  void getData() async{
    http.Response response = await http.get("https://jsonkeeper.com/b/BAYF?fbclid=IwAR2C_C_X0OGLjGFCT4Orn3k6RKYzVvYNcg7jUaDqISTGzzqwhULRQMSnu9w");
    print(response.statusCode);

    if(response.statusCode==200){
      String data = response.body;
      var rotate = jsonDecode(data)[0]['movies'];
      var movie0 = rotate[1];
      Map<String, dynamic> theAvengers = jsonDecode(data)[0]['movies'][0];
      // var theAvengers = jsonDecode(data)[1]['movies'];
      // var ironMan = jsonDecode(data)[2]['movies'];
      // var spiderMan = jsonDecode(data)[3]['movies'];
      // var capA = jsonDecode(data)[4]['movies'];
      // var antMan = jsonDecode(data)[5]['movies'];

      print(movie0);
      // print(ironMan);
      // print(spiderMan);
      // print(capA);
      // print(antMan);

    }
    else{
      print(response.statusCode);
    }

    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return MyHomePage();
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
