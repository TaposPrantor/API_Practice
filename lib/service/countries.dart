import 'dart:convert';

import 'package:http/http.dart' as http;
import 'dart:developer';

class CountriesService{

  getCountries()async{
    var url = Uri.parse("https://fakeapi.extendsclass.com/countries");
    var response = await http.get(url);
    if(response.statusCode == 200){
      return jsonDecode(response.body);
    }
  }

}