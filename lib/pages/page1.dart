import 'package:flash_meteo/composants/homebulles.dart';
import 'package:flash_meteo/pages/home.dart';
import 'package:flutter/material.dart';

class page1 extends StatefulWidget {
  const page1({ Key? key }) : super(key: key);

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            homebulle(
              titre: "boutton",
              titre_color: Color.fromARGB(234, 134, 98, 3),
              longueur: 70,
              largeur: 70,
              icon: Icons.abc_outlined,
              border_color: Color(0xFFFF9000),
              description: "retour",
              description_color: Color.fromARGB(255, 123, 127, 6),
              button_color: Color.fromARGB(204, 155, 132, 20),
              icon_color: Color.fromARGB(125, 16, 158, 198),
              Icon_size: 5,
              radius_t: 2,
              context: context,
              Page: Home(),
            )
          ],
        ) ),
    
      
    );
  }
}
