import 'package:rxdart/rxdart.dart';

import 'loading.dart';
import 'package:http/http.dart' as http;


abstract class BaseBloc{
  Stream<Loading> get loading=>_loadingSubject.stream;
  final _loadingSubject= BehaviorSubject<Loading>();
  BehaviorSubject<Loading> get loadingSubject=>_loadingSubject;

  void dispose(){
    _loadingSubject.close();
 
}
 RestCountries(
   String NomdePays
 ){
   
   print('On est dans le rest countries');
   final response = /*await*/ http.get(
        Uri.parse('https://restcountries.com/v3.1/name/japan' + NomdePays),
        //body: {
         // "username": user.username,
         // "password": user.password,
      //  });
   );
   }
}