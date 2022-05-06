import 'package:flash_meteo/pages/page1.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController _NomdeVilleControler = TextEditingController();
  String NomaAffiche= "?";
  void AfficheVille (){
    setState(() {
      NomaAffiche=_NomdeVilleControler.text;
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
            Text("Voici la météo qu'il fait dans à", style: TextStyle(fontSize: 20),),
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
               Text('$NomaAffiche', style: TextStyle(fontSize: 30),),
            
          ],
        ),
      ),
       floatingActionButton: FloatingActionButton(
        onPressed: (() {
          AfficheVille();
          
        }),
        tooltip: 'Increment',
        child: const Icon(Icons.home, color: Colors.red,
        ),
      
    ),
    );
  }
   RestCountries (
   String NomdePays
 ) async {
   
   print('On est dans le rest countries');
   print("AAAAAAAAAAAAAA");
   print(NomdePays);
   final response = await http.get(
        Uri.parse('https://restcountries.com/v3.1/name/' + NomdePays),
        //body: {
         // "username": user.username,
         // "password": user.password,
      //  });
   );
   print(response.body);
   }
}

