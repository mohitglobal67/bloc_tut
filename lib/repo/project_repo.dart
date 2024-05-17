import 'dart:convert';

import 'package:bloc_project/models/productmodel.dart';
import 'package:bloc_project/models/usermodel.dart';
import 'package:http/http.dart' as http;

class ProductRepo {
  Future<List<ProductsModel>> getProducts() async {
    var response =
        await http.get(Uri.parse("https://fakestoreapi.com/products"));

    if (response.statusCode == 200) {
      return productsModelFromJson(response.body);
    } else {
      throw Exception("Failed to load products");
    }
  }

  Future<ConsellorModel> loginsend() async {
    // var response =
    //     await http.post(Uri.parse("https://fakestoreapi.com/products"));

    var response =
        await http.post(Uri.parse("https://fakestoreapi.com/products"), body: {
      {"email": "eve.holt@reqres.in", "password": "cityslicka"}
    });

    if (response.statusCode == 200) {
      Map data = jsonDecode(response.body);

      print(data);
      return consellorModelFromJson(data.toString());
    } else {
      throw Exception("Failed to load products");
    }
  }
}
