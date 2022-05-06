// To parse this JSON data, do
//
//     final pays = paysFromJson(jsonString);

import 'dart:convert';

import 'package:flash_meteo/modeles/name.dart';
import 'package:flash_meteo/modeles/postalcode.dart';

import 'capitalInfo.dart';
import 'language.dart';

List<Pays> paysFromJson(String str) => List<Pays>.from(json.decode(str).map((x) => Pays.fromJson(x)));

String paysToJson(List<Pays> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Pays {
    Pays({
        this.name,      
        this.independent,
        this.status,      
         
        this.capital,   
        this.languages,     
        this.latlng,
        this.population, 
        this.continents,     
        this.capitalInfo,
        this.postalCode,
    });

    Name? name; 
    bool? independent;
    String? status;   
   
    List<String>? capital;
    Languages? languages;

    List<int>? latlng;
    int? population;
    List<String>? continents;
    CapitalInfo? capitalInfo;
    PostalCode? postalCode;

    factory Pays.fromJson(Map<String, dynamic> json) => Pays(
        name: Name.fromJson(json["name"]),      
        independent: json["independent"],
        status: json["status"],     
          
        capital: List<String>.from(json["capital"].map((x) => x)),      
        languages: Languages.fromJson(json["languages"]),       
        latlng: List<int>.from(json["latlng"].map((x) => x)),      
        population: json["population"],       
        continents: List<String>.from(json["continents"].map((x) => x)),       
        capitalInfo: CapitalInfo.fromJson(json["capitalInfo"]),
        postalCode: PostalCode.fromJson(json["postalCode"]),
    );

    Map<String, dynamic> toJson() => {
        "name": name!.toJson(),
       
        "independent": independent,
        "status": status,
        
        
       
        "capital": List<dynamic>.from(capital!.map((x) => x)),
        
         "languages": languages!.toJson(),
       
        "latlng": List<dynamic>.from(latlng!.map((x) => x)),
        
        
        "population": population,
        
        "continents": List<dynamic>.from(continents!.map((x) => x)),
       
        "capitalInfo": capitalInfo!.toJson(),
        "postalCode": postalCode!.toJson(),
    };
}















