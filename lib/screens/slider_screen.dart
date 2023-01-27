import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _sliderValue = 100;
  bool _sliderEnable = true;

  Widget buildSlider(){
    return Slider(
      min: 50,
      max: 400,
      value: _sliderValue,
      //divisions: 10,
      onChanged: _sliderEnable
            ? (value) {
                _sliderValue = value;
                setState(() {});
              }
            : null);
  }

  Widget buildImage(){
    return Expanded(
      child: SingleChildScrollView(
        child: Image(
          image: const NetworkImage('https://static.wikia.nocookie.net/esstarwars/images/d/d5/MP-YodaSpecies.png/revision/latest?cb=20180802191916'),
          fit: BoxFit.contain,
          width: _sliderValue,
        ),
      ),
    );
  }

  Widget buildSwitch(){
    return SwitchListTile(
      title: const Text('Activar Slide'),
      value: _sliderEnable, 
      onChanged: (value) {
        _sliderEnable = value;
        setState(() {});
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Slider & Checks'),
      ),
      body: Column(
        children: [
          buildSlider(),
          buildSwitch(),
          const AboutListTile(),
          buildImage(),
          const SizedBox(height: 50),
        ],
      )
    );
  }
}