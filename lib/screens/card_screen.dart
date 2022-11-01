import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {

  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),

      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        children: const [
          CustomCardTypeOne(),
          SizedBox(height: 10),
          CustomCardTypeTwo(imageUrl: 'https://thelandscapephotoguy.com/wp-content/uploads/2019/01/landscape%20new%20zealand%20S-shape.jpg',name: 'Un paisa',),
          SizedBox(height: 10,),
          CustomCardTypeTwo(imageUrl: 'http://cdn.cnn.com/cnnnext/dam/assets/190517091026-07-unusual-landscapes-travel.jpg'),
          SizedBox(height: 10,)
        ],
      )
      ,
    );
  }
}

