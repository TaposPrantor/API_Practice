import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;

class ProductService{
  Future<List> getProductList()async{
    var uri = Uri.parse("https://fakestoreapi.com/products");
    var r = await http.get(uri);

    if(r.statusCode == 200){
      return jsonDecode(r.body);
    }else{
      return [];
    }
  }
}