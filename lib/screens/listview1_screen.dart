import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  ListView1Screen({Key? key}) : super(key: key);

  List options = ['Avengers', 'Star Wars', 'Nat Geo', 'Discovery'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView 1'),
        ),
        body: ListView(
          children: [
            ...options.map((e) => ListTile(
                  title: Text(e),
                  trailing: const Icon(Icons.arrow_forward_ios_outlined),
                ))
          ],
        ));
  }
}
