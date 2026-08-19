
import 'package:api_project/service/countries.dart';
import 'package:flutter/material.dart';


class Countries extends StatelessWidget {
  const Countries({super.key});

  getData()async{
    await CountriesService().getCountries();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("UN Country List"),
        backgroundColor: Colors.yellow.shade200,
      ),
      body: ListView.builder(
        itemCount: 10,
          itemBuilder: (c, i)=>ListTile(
            title: Text("Title"),
            subtitle: Text("SubTitle"),
          )

      ),
    );
  }
}
