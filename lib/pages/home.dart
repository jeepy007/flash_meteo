import 'dart:async';
import 'dart:html';

import 'package:flash_meteo/modeles/pays.dart';
import 'package:flash_meteo/modeles/utile/request_extension.dart';
import 'package:flash_meteo/pages/page1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:http/http.dart' as http;
import 'package:rxdart/rxdart.dart';

import '../modeles/loading.dart';


class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String NomaAffiche2="";

  final TextEditingController _NomdeVilleControler = TextEditingController();
  String NomaAffiche= "?";
  void AfficheVille () async{
    NomaAffiche=_NomdeVilleControler.text;
    NomaAffiche2= await RestCountries(NomaAffiche);
     
    setState(() {
   RestCountries(NomaAffiche);
     
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
                 
                Container(
                  height: 200,
                  width: 200,
                  child: TextFormField(
                    controller: _NomdeVilleControler,
                    decoration: InputDecoration(
                      hintText: "Nom de ville", 
                      
                    ),

                  ),
                ),
               Text('$NomaAffiche2', style: TextStyle(fontSize: 30),),
            
          ],
        ),
      ),
       floatingActionButton: FloatingActionButton(
        onPressed: (() {
          AfficheVille();
          
        }),
        tooltip: 'Increment',
        child: const Icon(Icons.search, color: Colors.red,
        ),
      
    ),
    );
  }

  Stream<Loading> get loadingPaysStream =>
      _loadingPaysSubject.stream;
  final _loadingPaysSubject = BehaviorSubject<Loading>();

  RestCountries (
   String NomdePays) async {
     RequestExtension<Pays> requestExtension= RequestExtension();
     _loadingPaysSubject.add(Loading(loading: true,message: 'chargement en cours'));
     String retour='TTTTTTTTTTTTTTTTTT';
     Pays response= await requestExtension.get(NomdePays);

     //Future< dynamic > response= requestExtension.get(NomdePays);
    
     
     print(NomdePays);
     print('%%%%%%%%%%%%%%%5555555555555555555%%%%%%%%%%%%%%%%%%%%%%%%');
     print(response.capital!.first);

    //Pays ? response1;
      
     //response.then((value){

    //   print('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');
     // response1= value as Pays;
      //print('########################################################################');
     //print(response1!.name!.official.toString());
     // });
     // NomaAffiche2 = response1!.capital as String;
     print('222222222222222222222222222222222');
     retour= "la capitale est : "+ (response.capital!.first)+ "  la population est : "+""+ (response.population).toString();
     print(retour);
     return retour;
}
     

   
   }
   

