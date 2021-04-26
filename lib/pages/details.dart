import 'package:flutter/material.dart';
import 'package:balancer/pages/home.dart';

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       backgroundColor: Colors.pink,
       elevation: 0,
       leading: Image.network('https://64.media.tumblr.com/482043ff06c5c70f31f07706ba4320dc/5d20e0e2c7722446-74/s400x600/a1e4ee48f078e9e35c6a55dea73ed717b301ea6c.png'),
      ),
      backgroundColor: Colors.pink,
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage()));
          },
          child: Text(
            'Go to HomePage',
            style: TextStyle(color: Colors.lime),
          ),
        ),
      ),
    );
  }
}
