import 'package:flutter/material.dart';
import 'package:fl_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('card Screen'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCard1(),
          SizedBox(height: 20),
          CustomCard2(name: 'John Constable', imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/1/15/John_Constable_-_Wivenhoe_Park,_Essex_-_Google_Art_Project.jpg'),
          SizedBox(height: 20),
          CustomCard2(imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c8/John_Constable_023.jpg/1280px-John_Constable_023.jpg'),
          SizedBox(height: 20),
          CustomCard2(imageUrl: 'https://www.atlasofplaces.com/atlas-of-places-images/_scaled/ATLAS-OF-PLACES-JOHN-CONSTABLE-LANDSCAPE-AND-PLACE-GPH-3.jpg'),
          SizedBox(height: 100),
        ],
      ),
    );
  }
}
