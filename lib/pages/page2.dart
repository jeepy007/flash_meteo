import 'dart:html';

import 'package:flash_meteo/modeles/pays.dart';
import 'package:flash_meteo/modeles/utile/request_extension.dart';
import 'package:flash_meteo/pages/page1.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:rxdart/rxdart.dart';

import '../modeles/loading.dart';


class Page2 extends StatefulWidget {
  const Page2({ Key? key }) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {


  final TextEditingController _NomdeVilleControler = TextEditingController();
  String NomaAffiche= "?";
  void AfficheVille (){
    setState(() {

    });
    
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('METEO APP') ,
        centerTitle: true,
       
      ),

      body: Center(
        child: Column(
          children: [
             SizedBox(height: 20,),
            Text("Voici les informations de:", style: TextStyle(fontSize: 20),),
               SizedBox(height: 20,),
                 
 
               Text('', style: TextStyle(fontSize: 30),),
            
          ],
        ),
      ),
      
    );
  }


   
   }
   

