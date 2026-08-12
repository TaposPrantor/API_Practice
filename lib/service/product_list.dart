import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

class ProductService{
  Future<List> getProductList()async{
    var uri = Uri.parse("https://fakestoreapi.com/products");
    var r = await http.get(uri);

    log("============");
    log("====${r.statusCode}========");
    log("=====${jsonDecode(r.body)}=======");
    log("============");

    return jsonDecode(r.body);

  }
}