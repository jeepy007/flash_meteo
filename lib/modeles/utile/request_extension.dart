import 'dart:async';
import 'dart:convert';
import 'package:flash_meteo/modeles/pays.dart';
//import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class RequestExtension<T> {
  static const String _urlEndpoint = 'https://restcountries.com/v3.1/name/';
  static const String _urlEndpointSimple = 'https://restcountries.com/v3.1/name/';

  


  Future<dynamic> get(String url) async {
    print(url);
    print("++++++++++++++++++++++++++++++++");
    print(_urlEndpoint + url);

    final response= await http.get(Uri.parse(_urlEndpoint + url),
    headers:{"content-type":"application/Json;charset=utf-8"}

   );
   if (response.statusCode==200 || response.statusCode==201){
     print(response.body);
     print("************************************************");
     switch (T){
       case Pays: 
       return Pays.fromJson(json.decode(response.body.toString())) as T;
       //default: return DataResponse<T>.fromJson(json.decode(response.body));

     };
   };


   
  }
}