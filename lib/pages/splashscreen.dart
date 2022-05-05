import 'dart:async';

import 'package:flutter/material.dart';

import 'connexion.dart';
import 'page1.dart';


class splashscreen extends StatefulWidget {
  const splashscreen({ Key? key }) : super(key: key);

  @override
  State<splashscreen> createState() => _page1State();
}

class _page1State extends State<splashscreen> {
  void initState(){
    //TODO: implement initState
    super.initState();
    Timer(Duration(seconds:4),(){
      Navigator.of(context).pushReplacement
      (MaterialPageRoute(builder:(_)=>
      Connexion(),
      ),
      );
    });
  }
  
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text("Page1"),
        centerTitle: true,
      ),
      
      body: Center(
        child: Column(
          children: [
            Image.asset('assets/images/meteo.jpeg', height: 600,),
            CircularProgressIndicator(
              color: Colors.red,
            )
    
        ]),
      ),
    );
  }

  connexion() {}
}