import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  
  final options = const['megaman', 'metal gear', 'sps', ' final fantasy'];

  const Listview1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Text("ListView Tipo 1")
      ),
      body: ListView(
        children: [
          ...options.map(
            (game) => ListTile(
              title: Text(game),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
              )
             ).toList()
            /*ListTile(  
              title:  Text("Hola mundo"),
            )*/
        ],
      )
    );
  }
}