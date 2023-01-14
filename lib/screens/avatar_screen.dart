import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatars'),
        actions:  [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: CircleAvatar(
              backgroundColor: Colors.green[900],
              child: const Text('SL'),
            ),
          )
        ],
      ),
      body: const Center(child: CircleAvatar(
        maxRadius: 110,
        backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/f/f5/John_Constable_017.jpg/396px-John_Constable_017.jpg'),
      ),)
    );
  }
}