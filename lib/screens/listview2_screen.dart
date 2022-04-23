import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  
  final options = const['megaman', 'metal gear', 'sps', ' final fantasy'];

  const Listview2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Text("ListView Tipo 1")
      ),
      body: ListView.separated(
       itemCount: options.length, 
       itemBuilder: (context, index) => ListTile(
              title: Text(options[index]),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
              ) ,
      separatorBuilder: (_, __) => const Divider(),
        
      )
    );
  }
}