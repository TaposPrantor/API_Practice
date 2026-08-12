import 'package:api_project/database/data.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {

  List myProduct = [];
  getProduct()async{
    myProduct.clear();
    await Future.delayed(Duration(seconds: 3));
    myProduct.addAll(MyData.data);
    setState(() {});
  }

  @override
  void initState(){
    getProduct();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product List"),
        centerTitle: true,
        backgroundColor: Colors.orange.shade50,
      ),

      body: ListView.builder(
        itemCount: myProduct.length,
          itemBuilder: (c,i)=>Padding(
            padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 6),
            child: Card(
              child: Row(
                spacing: 7,
                children: [
                  Expanded(
                    flex: 1,
                      child: Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage("${myProduct[i]['image']}")
                          )
                        ),
                      )
                  ),
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("${myProduct[i]['title']}", style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                        Text("Category: ${myProduct[i]['category']}", style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),),
                        Text("Price : ${myProduct[i]['price']}", style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),),
                        Text("Rating: ${myProduct[i]['rating']['rate']}", style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),),
                        Text("Review: ${myProduct[i]['rating']['count']}", style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
      ),
    );
  }
}
