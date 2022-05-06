import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

GestureDetector homebulle(
  {
  String? titre,
   String? description,
   Color ? titre_color, 
   Color ? description_color,
   Color ? button_color, 
   Color ? border_color,
   Color? icon_color,
   double? Icon_size,
   IconData? icon,
   
   Widget ? Page,
   double ? radius_t,
   context,
   double ? longueur,
   double ? largeur}
){
  return GestureDetector(
    onTap: () {
        Navigator.of(context).pushReplacement
      (MaterialPageRoute(builder:(_)=>
      Page!,
      ),
      );
      
    },
    child:  Container(
               height: longueur,
                width: largeur,                
                decoration: BoxDecoration(
                  color:button_color,
                  borderRadius: BorderRadius.circular(radius_t!),
                  border: Border.all(
                    color: border_color!
                  )
                    
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(icon),
                      Visibility(visible:titre==null?false:true ,
                        child: Text( titre==null?"":titre, style: TextStyle(color: titre_color),)
                        ), 
                      Text(description==null?"":description, style: TextStyle(color: description_color),)

                  ]),
                ),
  );


}