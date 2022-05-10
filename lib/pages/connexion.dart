import 'package:flash_meteo/pages/page1.dart';
import 'package:flutter/material.dart';

class Connexion extends StatefulWidget {
  const Connexion({ Key? key }) : super(key: key);

  @override
  State<Connexion> createState() => _ConnexionState();
}

class _ConnexionState extends State<Connexion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Connexion', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
      ),

      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(70.0),
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 150),
                  child: Image.asset("assets/images/meteo1.jpeg"),
                ),
                 SizedBox(height: 20,),
                 
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "email",
                    
                  ),

                ),
                SizedBox(height: 20,),

                TextFormField(
                  decoration: InputDecoration(
                    hintText: "mot de passe",
                    
                  ),

                ),
                SizedBox(height: 20,),
                ElevatedButton(onPressed: (){
                  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => page1()),
  );
                },
                 child: Text("valider"))
                

              ],
            ),
          ),
        ),
      ),

    
    );
  }
}