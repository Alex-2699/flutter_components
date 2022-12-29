import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  ListView2Screen({Key? key}) : super(key: key);

  List options = ['Avengers', 'Star Wars', 'Nat Geo', 'Discovery'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView 2'),
          elevation: 0,
          backgroundColor: Colors.green,
        ),
        body: ListView.separated(
          itemCount: options.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(options[index]),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                
              },
            );
          },
          separatorBuilder: (_, __) => const Divider(),
        ));
  }
}
