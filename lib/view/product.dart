import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product List"),
        centerTitle: true,
        backgroundColor: Colors.orange.shade50,
      ),

      body: ListView.builder(
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
                              image: NetworkImage("")
                          )
                        ),
                      )
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Data", style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                        Text("Category: Apex/Bata", style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),),
                        Text("Price: 120", style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),),
                        Text("Rating: 5", style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),),
                        Text("Review: 517", style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Data", style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                        Text("Category: Apex/Bata", style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),),
                        Text("Price: 120", style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),),
                        Text("Rating: 5", style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),),
                        Text("Review: 517", style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),),
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
